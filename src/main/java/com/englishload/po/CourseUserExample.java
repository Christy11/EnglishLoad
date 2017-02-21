package com.englishload.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CourseUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseUserExample() {
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

        public Criteria andCourseUserIdIsNull() {
            addCriterion("course_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdIsNotNull() {
            addCriterion("course_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdEqualTo(Integer value) {
            addCriterion("course_user_id =", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdNotEqualTo(Integer value) {
            addCriterion("course_user_id <>", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdGreaterThan(Integer value) {
            addCriterion("course_user_id >", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("course_user_id >=", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdLessThan(Integer value) {
            addCriterion("course_user_id <", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("course_user_id <=", value, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdIn(List<Integer> values) {
            addCriterion("course_user_id in", values, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdNotIn(List<Integer> values) {
            addCriterion("course_user_id not in", values, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdBetween(Integer value1, Integer value2) {
            addCriterion("course_user_id between", value1, value2, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andCourseUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("course_user_id not between", value1, value2, "courseUserId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
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

        public Criteria andWatchdateIsNull() {
            addCriterion("watchdate is null");
            return (Criteria) this;
        }

        public Criteria andWatchdateIsNotNull() {
            addCriterion("watchdate is not null");
            return (Criteria) this;
        }

        public Criteria andWatchdateEqualTo(Date value) {
            addCriterion("watchdate =", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateNotEqualTo(Date value) {
            addCriterion("watchdate <>", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateGreaterThan(Date value) {
            addCriterion("watchdate >", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateGreaterThanOrEqualTo(Date value) {
            addCriterion("watchdate >=", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateLessThan(Date value) {
            addCriterion("watchdate <", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateLessThanOrEqualTo(Date value) {
            addCriterion("watchdate <=", value, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateIn(List<Date> values) {
            addCriterion("watchdate in", values, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateNotIn(List<Date> values) {
            addCriterion("watchdate not in", values, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateBetween(Date value1, Date value2) {
            addCriterion("watchdate between", value1, value2, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdateNotBetween(Date value1, Date value2) {
            addCriterion("watchdate not between", value1, value2, "watchdate");
            return (Criteria) this;
        }

        public Criteria andWatchdurationIsNull() {
            addCriterion("watchduration is null");
            return (Criteria) this;
        }

        public Criteria andWatchdurationIsNotNull() {
            addCriterion("watchduration is not null");
            return (Criteria) this;
        }

        public Criteria andWatchdurationEqualTo(Integer value) {
            addCriterion("watchduration =", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationNotEqualTo(Integer value) {
            addCriterion("watchduration <>", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationGreaterThan(Integer value) {
            addCriterion("watchduration >", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationGreaterThanOrEqualTo(Integer value) {
            addCriterion("watchduration >=", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationLessThan(Integer value) {
            addCriterion("watchduration <", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationLessThanOrEqualTo(Integer value) {
            addCriterion("watchduration <=", value, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationIn(List<Integer> values) {
            addCriterion("watchduration in", values, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationNotIn(List<Integer> values) {
            addCriterion("watchduration not in", values, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationBetween(Integer value1, Integer value2) {
            addCriterion("watchduration between", value1, value2, "watchduration");
            return (Criteria) this;
        }

        public Criteria andWatchdurationNotBetween(Integer value1, Integer value2) {
            addCriterion("watchduration not between", value1, value2, "watchduration");
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