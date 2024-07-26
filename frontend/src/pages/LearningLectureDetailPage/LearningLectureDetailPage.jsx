import ArticlePreview from '../../components/Article/ArticlePreview/ArticlePreview';
import styles from './LearningLectureDetailPage.module.css';
import { useNotices } from '../../hooks/api/useNotices';
import { useParams } from 'react-router-dom';
import { useQnas } from '../../hooks/api/useQnas';

export default function LearningLectureDetailPage() {
  const { lectureId } = useParams();
  const { data: noticesData } = useNotices(lectureId);
  const notices = noticesData?.data;
  const { data: qnasData } = useQnas(lectureId);
  const questions = qnasData?.data;
  // TODO: QnA 훅 작성 후 사용 및 3개까지만 slice 추가

  return (
    <section className={styles.previews}>
      <ArticlePreview
        to="notice"
        title="공지사항"
        contents={notices}
      />
      <ArticlePreview
        to="qna"
        title="Q&A"
        contents={questions}
      />
      <ArticlePreview title="커리큘럼" />
    </section>
  );
}
