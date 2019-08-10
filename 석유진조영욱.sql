
결과***

Q. 석유진이 오늘부터 엔코아 과정이 끝날 때까지 매주 알코올100g(약 맥주 5잔)을 마신다면 당신이 죽는 날(다른 변수 제외, 평균수명 기준, 연도만 따진 날짜)
A. select add_months(add_months(sysdate, round(85.74 - 27, 0)*12), -((52-to_number(to_char(to_date('2019-07-19','yyyy-mm-dd'),'WW')) + to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')))*6)) from dual;
ADD_MONT
--------
65/07/19

Q. 조영욱이 오늘부터 엔코아 과정이 끝날 때까지 매주 알코올100g(약 맥주 5잔)을 마신다면 당신이 죽는 날(다른 변수 제외, 평균수명 기준, 연도만 따진 날짜)
A. select add_months(add_months(sysdate, round(80.50 - 26, 0)*12), -((52-to_number(to_char(to_date('2019-07-19','yyyy-mm-dd'),'WW')) + to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')))*6)) from dual;
ADD_MONT
--------
61/07/19

과정***
평균수명 기준, 내가 살 날까지 남은 개월 수를 오늘 날짜에서 더한 날짜 (내가 죽는 날) 
--기대수명 	80.50 남
			85.74 여
select add_months(sysdate, round(평균수명 - 현재나이, 0)*12) from dual; 

오늘~엔코아 마무리 단축 수명 개월 수 : 
오늘부터 남은 주 수(week) * 알코올100g수명6개월단축 	(-->26주*알코올100g6개월 = 156개월 단축)
select (52 - to_number(to_char(to_date('2019-07-19','yyyy-mm-dd'),'WW')) + to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')))*6 from dual;

	올해 남은 주 수 a:
	select 52 - to_number(to_char(to_date('2019.07.19','yyyy-mm-dd'), 'WW')) a from dual;
	내년 남은 주 수 b:
	select to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')) a from dual;
	매주 단축되는 수명 : ( a + b )*6

참조***
...순수 알코올 100g은 맥주 또는 와인 5~6잔 분량을 의미한다. 매주 맥주 또는 와인 5~6잔, 하루 평균 1~2잔의 술을 마시는 것이 수명을 단축시키는데 영향을 미친다는 연구결과가 나왔다. ...
- 랜싯 2018년도 연구 결과(The Lancet Public Health)



in English----------------------------------------------------------------------
				 
Result***
				 
Q. If Yujin(woman) starts drinking 100 grams of alcohol every day, when will she die?(Excluding other variables, based on life expectancy, date based on year only)
A. select add_months(add_months(sysdate, round(85.74 - 27, 0)*12), -((52-to_number(to_char(to_date('2019-07-19','yyyy-mm-dd'),'WW')) + to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')))*6)) from dual;
ADD_MONT
--------
65/07/19

Q. If Youngwook(male) starts drinking 100 grams of alcohol every day, when will she die?(Excluding other variables, based on life expectancy, date based on year only)
A. select add_months(add_months(sysdate, round(80.50 - 26, 0)*12), -((52-to_number(to_char(to_date('2019-07-19','yyyy-mm-dd'),'WW')) + to_number(to_char(to_date('2020.01.16','yyyy-mm-dd'), 'WW')))*6)) from dual;
ADD_MONT
--------
61/07/19

Process***
