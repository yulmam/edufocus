import { ArticleLink } from '../../components/ArticleLink';
import ArticleBoard from '../../components/ArticleBoard/ArticleBoard';
import { useReportSetDetail } from '../../hooks/api/useReportSetDetail';
import { useReportSetDelete } from '../../hooks/api/useReportSetDelete';
import { useParams, useNavigate } from 'react-router-dom';

export default function TeacherReportsetDetailPage() {
  const { reportsetId } = useParams();
  const navigate = useNavigate();
  const { reportsetDelete } = useReportSetDelete();
  const { data } = useReportSetDetail(reportsetId);
  const reports = data?.data;

  const formatDate = (dateArray) => {
    const date = new Date(...dateArray.slice(0, 6));
    return date.toLocaleString('ko-KR', {
      hour12: true,
      timeZone: 'Asia/Seoul',
    });
  };

  const handleDelete = async (e) => {
    e.preventDefault();
    await reportsetDelete(reportsetId);
    navigate('..');
  };

  return (
    <div>
      <ArticleBoard
        title="퀴즈 조회"
        canCreate={false}
      >
        {reports.length &&
          reports.map?.((report) => {
            const formattedDate = formatDate(report.date);
            return (
              <ArticleLink
                key={`${report.reportId}`}
                title={
                  report.correctCount == -1
                    ? `${report.name} - 미응시`
                    : `${report.name} - ${report.title} 점수: ${report.correctCount}/${report.allCount}`
                }
                sub={`${formattedDate}`}
                to={`../report/${report.reportId}`}
              />
            );
          })}
      </ArticleBoard>
      <button
        type="button"
        onClick={handleDelete}
      >
        리포트 삭제
      </button>
    </div>
  );
}
