package com.englishload.po;

import java.util.ArrayList;
import java.util.List;

public class HearingExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HearingExample() {
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

        public Criteria andHearingIdIsNull() {
            addCriterion("hearing_id is null");
            return (Criteria) this;
        }

        public Criteria andHearingIdIsNotNull() {
            addCriterion("hearing_id is not null");
            return (Criteria) this;
        }

        public Criteria andHearingIdEqualTo(Integer value) {
            addCriterion("hearing_id =", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdNotEqualTo(Integer value) {
            addCriterion("hearing_id <>", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdGreaterThan(Integer value) {
            addCriterion("hearing_id >", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hearing_id >=", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdLessThan(Integer value) {
            addCriterion("hearing_id <", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdLessThanOrEqualTo(Integer value) {
            addCriterion("hearing_id <=", value, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdIn(List<Integer> values) {
            addCriterion("hearing_id in", values, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdNotIn(List<Integer> values) {
            addCriterion("hearing_id not in", values, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdBetween(Integer value1, Integer value2) {
            addCriterion("hearing_id between", value1, value2, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hearing_id not between", value1, value2, "hearingId");
            return (Criteria) this;
        }

        public Criteria andHearingaudioIsNull() {
            addCriterion("hearingaudio is null");
            return (Criteria) this;
        }

        public Criteria andHearingaudioIsNotNull() {
            addCriterion("hearingaudio is not null");
            return (Criteria) this;
        }

        public Criteria andHearingaudioEqualTo(String value) {
            addCriterion("hearingaudio =", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioNotEqualTo(String value) {
            addCriterion("hearingaudio <>", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioGreaterThan(String value) {
            addCriterion("hearingaudio >", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioGreaterThanOrEqualTo(String value) {
            addCriterion("hearingaudio >=", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioLessThan(String value) {
            addCriterion("hearingaudio <", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioLessThanOrEqualTo(String value) {
            addCriterion("hearingaudio <=", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioLike(String value) {
            addCriterion("hearingaudio like", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioNotLike(String value) {
            addCriterion("hearingaudio not like", value, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioIn(List<String> values) {
            addCriterion("hearingaudio in", values, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioNotIn(List<String> values) {
            addCriterion("hearingaudio not in", values, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioBetween(String value1, String value2) {
            addCriterion("hearingaudio between", value1, value2, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingaudioNotBetween(String value1, String value2) {
            addCriterion("hearingaudio not between", value1, value2, "hearingaudio");
            return (Criteria) this;
        }

        public Criteria andHearingtitleIsNull() {
            addCriterion("hearingtitle is null");
            return (Criteria) this;
        }

        public Criteria andHearingtitleIsNotNull() {
            addCriterion("hearingtitle is not null");
            return (Criteria) this;
        }

        public Criteria andHearingtitleEqualTo(String value) {
            addCriterion("hearingtitle =", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleNotEqualTo(String value) {
            addCriterion("hearingtitle <>", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleGreaterThan(String value) {
            addCriterion("hearingtitle >", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleGreaterThanOrEqualTo(String value) {
            addCriterion("hearingtitle >=", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleLessThan(String value) {
            addCriterion("hearingtitle <", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleLessThanOrEqualTo(String value) {
            addCriterion("hearingtitle <=", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleLike(String value) {
            addCriterion("hearingtitle like", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleNotLike(String value) {
            addCriterion("hearingtitle not like", value, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleIn(List<String> values) {
            addCriterion("hearingtitle in", values, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleNotIn(List<String> values) {
            addCriterion("hearingtitle not in", values, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleBetween(String value1, String value2) {
            addCriterion("hearingtitle between", value1, value2, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingtitleNotBetween(String value1, String value2) {
            addCriterion("hearingtitle not between", value1, value2, "hearingtitle");
            return (Criteria) this;
        }

        public Criteria andHearingintroIsNull() {
            addCriterion("hearingintro is null");
            return (Criteria) this;
        }

        public Criteria andHearingintroIsNotNull() {
            addCriterion("hearingintro is not null");
            return (Criteria) this;
        }

        public Criteria andHearingintroEqualTo(String value) {
            addCriterion("hearingintro =", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroNotEqualTo(String value) {
            addCriterion("hearingintro <>", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroGreaterThan(String value) {
            addCriterion("hearingintro >", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroGreaterThanOrEqualTo(String value) {
            addCriterion("hearingintro >=", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroLessThan(String value) {
            addCriterion("hearingintro <", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroLessThanOrEqualTo(String value) {
            addCriterion("hearingintro <=", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroLike(String value) {
            addCriterion("hearingintro like", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroNotLike(String value) {
            addCriterion("hearingintro not like", value, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroIn(List<String> values) {
            addCriterion("hearingintro in", values, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroNotIn(List<String> values) {
            addCriterion("hearingintro not in", values, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroBetween(String value1, String value2) {
            addCriterion("hearingintro between", value1, value2, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingintroNotBetween(String value1, String value2) {
            addCriterion("hearingintro not between", value1, value2, "hearingintro");
            return (Criteria) this;
        }

        public Criteria andHearingdurationIsNull() {
            addCriterion("hearingduration is null");
            return (Criteria) this;
        }

        public Criteria andHearingdurationIsNotNull() {
            addCriterion("hearingduration is not null");
            return (Criteria) this;
        }

        public Criteria andHearingdurationEqualTo(Integer value) {
            addCriterion("hearingduration =", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationNotEqualTo(Integer value) {
            addCriterion("hearingduration <>", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationGreaterThan(Integer value) {
            addCriterion("hearingduration >", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationGreaterThanOrEqualTo(Integer value) {
            addCriterion("hearingduration >=", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationLessThan(Integer value) {
            addCriterion("hearingduration <", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationLessThanOrEqualTo(Integer value) {
            addCriterion("hearingduration <=", value, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationIn(List<Integer> values) {
            addCriterion("hearingduration in", values, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationNotIn(List<Integer> values) {
            addCriterion("hearingduration not in", values, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationBetween(Integer value1, Integer value2) {
            addCriterion("hearingduration between", value1, value2, "hearingduration");
            return (Criteria) this;
        }

        public Criteria andHearingdurationNotBetween(Integer value1, Integer value2) {
            addCriterion("hearingduration not between", value1, value2, "hearingduration");
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