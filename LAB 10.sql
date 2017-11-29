 --Delroy Mathieson --
--LAB 10--

--1. func1on PreReqsFor(courseNum) - Returns the immediate prerequisites for the passed-in course number.--

CREATE OR REPLACE FUNCTION PreReqsFor ( int, REFCURSOR) returns REFCURSOR as
	$$
	DECLARE courseNum int :=$1;
	DECLARE resultset REFCURSOR ;=$2;
BEGIN
	Open resultset for
		SELECT preReqNum
		FROM prerequisites
		WHERE courseNum = course_num;
	Return resultset;
END;
$$ language plpgsql;


 --Returns the courses for which the passed-in course number is an immediate pre-requisite.--

CREATE OR REPLACE FUNCTION isPreReqsFor (int, REFCURSOR) Returns REFCURSOR as
$$
DECLARE
	course_num int := $1;
	resultset REFCURSOR :=$2;
BEGIN
	open resultset for
		SELECT courseNum
		FROM prerequisites
		WHERE preReqNum = course_num;
	Return resultset;
END;
$$ language plpgsql;

