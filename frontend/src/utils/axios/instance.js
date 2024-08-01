import axios from 'axios';
import useBoundStore from '../../store';

const instance = axios.create({
  baseURL: import.meta.env.VITE_API_URL,
  timeout: 1000,
  headers: {
    'Content-type': 'application/json;charset=utf-8',
    'Access-Control-Allow-Origin': import.meta.env.VITE_ORIGIN,
  },
  withCredentials: true,
});

instance.interceptors.request.use((config) => {
  const accessToken = useBoundStore.getState().token;

  if (accessToken) {
    console.log(accessToken);
    config.headers.Authorization = `${accessToken}`;
  }

  return config;
});

instance.interceptors.response.use(
  (response) => response,
  (error) => {
    if (error.response.status !== 401) {
      return Promise.reject(error);
    }

    // TODO: api url update
    const REFRESH_API_URL = '/refresh-token';

    return instance.post(REFRESH_API_URL).then((response) => {
      const { accessToken } = response.data;

      useBoundStore.setState({ token: accessToken });
      error.config.headers.Authorization = `${accessToken}`;
      return instance(error.config);
    });
  }
);

export default instance;
