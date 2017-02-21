package com.englishload.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andCourseIdIsNull() {
            addCriterion("course_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNotNull() {
            addCriterion("course_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIdEqualTo(Integer value) {
            addCriterion("course_id =", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotEqualTo(Integer value) {
            addCriterion("course_id <>", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThan(Integer value) {
            addCriterion("course_id >", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("course_id >=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThan(Integer value) {
            addCriterion("course_id <", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThanOrEqualTo(Integer value) {
            addCriterion("course_id <=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIn(List<Integer> values) {
            addCriterion("course_id in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotIn(List<Integer> values) {
            addCriterion("course_id not in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdBetween(Integer value1, Integer value2) {
            addCriterion("course_id between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("course_id not between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCoursenameIsNull() {
            addCriterion("coursename is null");
            return (Criteria) this;
        }

        public Criteria andCoursenameIsNotNull() {
            addCriterion("coursename is not null");
            return (Criteria) this;
        }

        public Criteria andCoursenameEqualTo(String value) {
            addCriterion("coursename =", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotEqualTo(String value) {
            addCriterion("coursename <>", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThan(String value) {
            addCriterion("coursename >", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThanOrEqualTo(String value) {
            addCriterion("coursename >=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThan(String value) {
            addCriterion("coursename <", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThanOrEqualTo(String value) {
            addCriterion("coursename <=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLike(String value) {
            addCriterion("coursename like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotLike(String value) {
            addCriterion("coursename not like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameIn(List<String> values) {
            addCriterion("coursename in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotIn(List<String> values) {
            addCriterion("coursename not in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameBetween(String value1, String value2) {
            addCriterion("coursename between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotBetween(String value1, String value2) {
            addCriterion("coursename not between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursetimeIsNull() {
            addCriterion("coursetime is null");
            return (Criteria) this;
        }

        public Criteria andCoursetimeIsNotNull() {
            addCriterion("coursetime is not null");
            return (Criteria) this;
        }

        public Criteria andCoursetimeEqualTo(Date value) {
            addCriterion("coursetime =", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeNotEqualTo(Date value) {
            addCriterion("coursetime <>", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeGreaterThan(Date value) {
            addCriterion("coursetime >", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("coursetime >=", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeLessThan(Date value) {
            addCriterion("coursetime <", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeLessThanOrEqualTo(Date value) {
            addCriterion("coursetime <=", value, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeIn(List<Date> values) {
            addCriterion("coursetime in", values, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeNotIn(List<Date> values) {
            addCriterion("coursetime not in", values, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeBetween(Date value1, Date value2) {
            addCriterion("coursetime between", value1, value2, "coursetime");
            return (Criteria) this;
        }

        public Criteria andCoursetimeNotBetween(Date value1, Date value2) {
            addCriterion("coursetime not between", value1, value2, "coursetime");
            return (Criteria) this;
        }

        public Criteria andTeacherIsNull() {
            addCriterion("teacher is null");
            return (Criteria) this;
        }

        public Criteria andTeacherIsNotNull() {
            addCriterion("teacher is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherEqualTo(String value) {
            addCriterion("teacher =", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotEqualTo(String value) {
            addCriterion("teacher <>", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherGreaterThan(String value) {
            addCriterion("teacher >", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherGreaterThanOrEqualTo(String value) {
            addCriterion("teacher >=", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLessThan(String value) {
            addCriterion("teacher <", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLessThanOrEqualTo(String value) {
            addCriterion("teacher <=", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLike(String value) {
            addCriterion("teacher like", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotLike(String value) {
            addCriterion("teacher not like", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherIn(List<String> values) {
            addCriterion("teacher in", values, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotIn(List<String> values) {
            addCriterion("teacher not in", values, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherBetween(String value1, String value2) {
            addCriterion("teacher between", value1, value2, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotBetween(String value1, String value2) {
            addCriterion("teacher not between", value1, value2, "teacher");
            return (Criteria) this;
        }

        public Criteria andClickrateIsNull() {
            addCriterion("clickrate is null");
            return (Criteria) this;
        }

        public Criteria andClickrateIsNotNull() {
            addCriterion("clickrate is not null");
            return (Criteria) this;
        }

        public Criteria andClickrateEqualTo(Integer value) {
            addCriterion("clickrate =", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateNotEqualTo(Integer value) {
            addCriterion("clickrate <>", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateGreaterThan(Integer value) {
            addCriterion("clickrate >", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateGreaterThanOrEqualTo(Integer value) {
            addCriterion("clickrate >=", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateLessThan(Integer value) {
            addCriterion("clickrate <", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateLessThanOrEqualTo(Integer value) {
            addCriterion("clickrate <=", value, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateIn(List<Integer> values) {
            addCriterion("clickrate in", values, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateNotIn(List<Integer> values) {
            addCriterion("clickrate not in", values, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateBetween(Integer value1, Integer value2) {
            addCriterion("clickrate between", value1, value2, "clickrate");
            return (Criteria) this;
        }

        public Criteria andClickrateNotBetween(Integer value1, Integer value2) {
            addCriterion("clickrate not between", value1, value2, "clickrate");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIsNull() {
            addCriterion("category_id is null");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIsNotNull() {
            addCriterion("category_id is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryIdEqualTo(Integer value) {
            addCriterion("category_id =", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotEqualTo(Integer value) {
            addCriterion("category_id <>", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdGreaterThan(Integer value) {
            addCriterion("category_id >", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("category_id >=", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdLessThan(Integer value) {
            addCriterion("category_id <", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("category_id <=", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIn(List<Integer> values) {
            addCriterion("category_id in", values, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotIn(List<Integer> values) {
            addCriterion("category_id not in", values, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("category_id between", value1, value2, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("category_id not between", value1, value2, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCoursecontentIsNull() {
            addCriterion("coursecontent is null");
            return (Criteria) this;
        }

        public Criteria andCoursecontentIsNotNull() {
            addCriterion("coursecontent is not null");
            return (Criteria) this;
        }

        public Criteria andCoursecontentEqualTo(String value) {
            addCriterion("coursecontent =", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentNotEqualTo(String value) {
            addCriterion("coursecontent <>", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentGreaterThan(String value) {
            addCriterion("coursecontent >", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentGreaterThanOrEqualTo(String value) {
            addCriterion("coursecontent >=", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentLessThan(String value) {
            addCriterion("coursecontent <", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentLessThanOrEqualTo(String value) {
            addCriterion("coursecontent <=", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentLike(String value) {
            addCriterion("coursecontent like", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentNotLike(String value) {
            addCriterion("coursecontent not like", value, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentIn(List<String> values) {
            addCriterion("coursecontent in", values, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentNotIn(List<String> values) {
            addCriterion("coursecontent not in", values, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentBetween(String value1, String value2) {
            addCriterion("coursecontent between", value1, value2, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursecontentNotBetween(String value1, String value2) {
            addCriterion("coursecontent not between", value1, value2, "coursecontent");
            return (Criteria) this;
        }

        public Criteria andCoursedurationIsNull() {
            addCriterion("courseduration is null");
            return (Criteria) this;
        }

        public Criteria andCoursedurationIsNotNull() {
            addCriterion("courseduration is not null");
            return (Criteria) this;
        }

        public Criteria andCoursedurationEqualTo(Integer value) {
            addCriterion("courseduration =", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationNotEqualTo(Integer value) {
            addCriterion("courseduration <>", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationGreaterThan(Integer value) {
            addCriterion("courseduration >", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationGreaterThanOrEqualTo(Integer value) {
            addCriterion("courseduration >=", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationLessThan(Integer value) {
            addCriterion("courseduration <", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationLessThanOrEqualTo(Integer value) {
            addCriterion("courseduration <=", value, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationIn(List<Integer> values) {
            addCriterion("courseduration in", values, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationNotIn(List<Integer> values) {
            addCriterion("courseduration not in", values, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationBetween(Integer value1, Integer value2) {
            addCriterion("courseduration between", value1, value2, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursedurationNotBetween(Integer value1, Integer value2) {
            addCriterion("courseduration not between", value1, value2, "courseduration");
            return (Criteria) this;
        }

        public Criteria andCoursepicIsNull() {
            addCriterion("coursepic is null");
            return (Criteria) this;
        }

        public Criteria andCoursepicIsNotNull() {
            addCriterion("coursepic is not null");
            return (Criteria) this;
        }

        public Criteria andCoursepicEqualTo(String value) {
            addCriterion("coursepic =", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotEqualTo(String value) {
            addCriterion("coursepic <>", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicGreaterThan(String value) {
            addCriterion("coursepic >", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicGreaterThanOrEqualTo(String value) {
            addCriterion("coursepic >=", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLessThan(String value) {
            addCriterion("coursepic <", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLessThanOrEqualTo(String value) {
            addCriterion("coursepic <=", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLike(String value) {
            addCriterion("coursepic like", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotLike(String value) {
            addCriterion("coursepic not like", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicIn(List<String> values) {
            addCriterion("coursepic in", values, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotIn(List<String> values) {
            addCriterion("coursepic not in", values, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicBetween(String value1, String value2) {
            addCriterion("coursepic between", value1, value2, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotBetween(String value1, String value2) {
            addCriterion("coursepic not between", value1, value2, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCourseintroIsNull() {
            addCriterion("courseintro is null");
            return (Criteria) this;
        }

        public Criteria andCourseintroIsNotNull() {
            addCriterion("courseintro is not null");
            return (Criteria) this;
        }

        public Criteria andCourseintroEqualTo(String value) {
            addCriterion("courseintro =", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroNotEqualTo(String value) {
            addCriterion("courseintro <>", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroGreaterThan(String value) {
            addCriterion("courseintro >", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroGreaterThanOrEqualTo(String value) {
            addCriterion("courseintro >=", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroLessThan(String value) {
            addCriterion("courseintro <", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroLessThanOrEqualTo(String value) {
            addCriterion("courseintro <=", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroLike(String value) {
            addCriterion("courseintro like", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroNotLike(String value) {
            addCriterion("courseintro not like", value, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroIn(List<String> values) {
            addCriterion("courseintro in", values, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroNotIn(List<String> values) {
            addCriterion("courseintro not in", values, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroBetween(String value1, String value2) {
            addCriterion("courseintro between", value1, value2, "courseintro");
            return (Criteria) this;
        }

        public Criteria andCourseintroNotBetween(String value1, String value2) {
            addCriterion("courseintro not between", value1, value2, "courseintro");
            return (Criteria) this;
        }

        public Criteria andPeriodIsNull() {
            addCriterion("period is null");
            return (Criteria) this;
        }

        public Criteria andPeriodIsNotNull() {
            addCriterion("period is not null");
            return (Criteria) this;
        }

        public Criteria andPeriodEqualTo(Integer value) {
            addCriterion("period =", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotEqualTo(Integer value) {
            addCriterion("period <>", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodGreaterThan(Integer value) {
            addCriterion("period >", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodGreaterThanOrEqualTo(Integer value) {
            addCriterion("period >=", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodLessThan(Integer value) {
            addCriterion("period <", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodLessThanOrEqualTo(Integer value) {
            addCriterion("period <=", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodIn(List<Integer> values) {
            addCriterion("period in", values, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotIn(List<Integer> values) {
            addCriterion("period not in", values, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodBetween(Integer value1, Integer value2) {
            addCriterion("period between", value1, value2, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotBetween(Integer value1, Integer value2) {
            addCriterion("period not between", value1, value2, "period");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}