import { QuizsetForm } from '../../components/QuizForm';
import { useQuizsetWrite } from '../../hooks/api/useQuizsetWrite';
import { useNavigate } from 'react-router-dom';

export default function QuizsetWritePage() {
  const navigate = useNavigate();
  const { quizsetWrite } = useQuizsetWrite();

  const handleSubmit = async (e, title, quizzes) => {
    e.preventDefault();
    console.log(quizzes);

    const images = [];
    const quizContents = [];

    quizzes.forEach((quiz) => {
      const { imageFile, ...quizData } = quiz;
      images.push(imageFile);
      quizContents.push(quizData);
    });

    const quizsetObject = {
      title,
      quizzes: quizContents,
    };

    const formData = new FormData();
    formData.append('quizSetCreateRequest', new Blob([JSON.stringify(quizsetObject)], { type: 'application/json' }));

    images.forEach((imageFile) => {
      if (imageFile) {
        formData.append('images', imageFile);
      } else {
        formData.append('images', new Blob([''], { type: 'image/jpg' }));
      }
    });

    await quizsetWrite(formData);
    navigate('..');
  };

  return (
    <QuizsetForm
      onSubmit={handleSubmit}
      headerTitle={'퀴즈 목록'}
      topic={'퀴즈 작성'}
      to={'..'}
    />
  );
}
