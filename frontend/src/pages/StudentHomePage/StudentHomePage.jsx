import { ClassCard } from '../../components/ClassCard';
import { ClassGrid } from '../../components/ClassGrid';
import { MaxWidthLayout } from '../../components/Layout';
import { useLectures } from '../../hooks/api/useLectures';
import { useMyLectures } from '../../hooks/api/useMyLectures';

export default function StudentHomePage() {
  const { data: myLectures } = useMyLectures();
  const onGoingClasses = myLectures?.data ?? [];

  const { data: allLectures } = useLectures();
  const allClasses = allLectures?.data ?? [];

  // TODO: 전체 강의 안에 수강중인 강의가 나옴
  return (
    <MaxWidthLayout>
      <ClassGrid title="수강중인 강의">
        {onGoingClasses.map?.((lecture) => (
          <ClassCard
            key={lecture.id}
            path={`/lecture/${lecture.id}`}
          >
            {lecture.title}
          </ClassCard>
        ))}
      </ClassGrid>
      <ClassGrid title="전체 강의">
        {allClasses.map?.((lecture) => (
          <ClassCard
            key={lecture.id}
            path={`/lecture/${lecture.id}/info`}
          >
            {lecture.title}
          </ClassCard>
        ))}
      </ClassGrid>
    </MaxWidthLayout>
  );
}
