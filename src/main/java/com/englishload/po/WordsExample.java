package com.englishload.po;

import java.util.ArrayList;
import java.util.List;

public class WordsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WordsExample() {
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

        public Criteria andWordIdIsNull() {
            addCriterion("word_id is null");
            return (Criteria) this;
        }

        public Criteria andWordIdIsNotNull() {
            addCriterion("word_id is not null");
            return (Criteria) this;
        }

        public Criteria andWordIdEqualTo(Integer value) {
            addCriterion("word_id =", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdNotEqualTo(Integer value) {
            addCriterion("word_id <>", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdGreaterThan(Integer value) {
            addCriterion("word_id >", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("word_id >=", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdLessThan(Integer value) {
            addCriterion("word_id <", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdLessThanOrEqualTo(Integer value) {
            addCriterion("word_id <=", value, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdIn(List<Integer> values) {
            addCriterion("word_id in", values, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdNotIn(List<Integer> values) {
            addCriterion("word_id not in", values, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdBetween(Integer value1, Integer value2) {
            addCriterion("word_id between", value1, value2, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordIdNotBetween(Integer value1, Integer value2) {
            addCriterion("word_id not between", value1, value2, "wordId");
            return (Criteria) this;
        }

        public Criteria andWordnameIsNull() {
            addCriterion("wordname is null");
            return (Criteria) this;
        }

        public Criteria andWordnameIsNotNull() {
            addCriterion("wordname is not null");
            return (Criteria) this;
        }

        public Criteria andWordnameEqualTo(String value) {
            addCriterion("wordname =", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameNotEqualTo(String value) {
            addCriterion("wordname <>", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameGreaterThan(String value) {
            addCriterion("wordname >", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameGreaterThanOrEqualTo(String value) {
            addCriterion("wordname >=", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameLessThan(String value) {
            addCriterion("wordname <", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameLessThanOrEqualTo(String value) {
            addCriterion("wordname <=", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameLike(String value) {
            addCriterion("wordname like", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameNotLike(String value) {
            addCriterion("wordname not like", value, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameIn(List<String> values) {
            addCriterion("wordname in", values, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameNotIn(List<String> values) {
            addCriterion("wordname not in", values, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameBetween(String value1, String value2) {
            addCriterion("wordname between", value1, value2, "wordname");
            return (Criteria) this;
        }

        public Criteria andWordnameNotBetween(String value1, String value2) {
            addCriterion("wordname not between", value1, value2, "wordname");
            return (Criteria) this;
        }

        public Criteria andExplanationIsNull() {
            addCriterion("explanation is null");
            return (Criteria) this;
        }

        public Criteria andExplanationIsNotNull() {
            addCriterion("explanation is not null");
            return (Criteria) this;
        }

        public Criteria andExplanationEqualTo(String value) {
            addCriterion("explanation =", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationNotEqualTo(String value) {
            addCriterion("explanation <>", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationGreaterThan(String value) {
            addCriterion("explanation >", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationGreaterThanOrEqualTo(String value) {
            addCriterion("explanation >=", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationLessThan(String value) {
            addCriterion("explanation <", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationLessThanOrEqualTo(String value) {
            addCriterion("explanation <=", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationLike(String value) {
            addCriterion("explanation like", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationNotLike(String value) {
            addCriterion("explanation not like", value, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationIn(List<String> values) {
            addCriterion("explanation in", values, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationNotIn(List<String> values) {
            addCriterion("explanation not in", values, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationBetween(String value1, String value2) {
            addCriterion("explanation between", value1, value2, "explanation");
            return (Criteria) this;
        }

        public Criteria andExplanationNotBetween(String value1, String value2) {
            addCriterion("explanation not between", value1, value2, "explanation");
            return (Criteria) this;
        }

        public Criteria andAudioIsNull() {
            addCriterion("audio is null");
            return (Criteria) this;
        }

        public Criteria andAudioIsNotNull() {
            addCriterion("audio is not null");
            return (Criteria) this;
        }

        public Criteria andAudioEqualTo(String value) {
            addCriterion("audio =", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioNotEqualTo(String value) {
            addCriterion("audio <>", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioGreaterThan(String value) {
            addCriterion("audio >", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioGreaterThanOrEqualTo(String value) {
            addCriterion("audio >=", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioLessThan(String value) {
            addCriterion("audio <", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioLessThanOrEqualTo(String value) {
            addCriterion("audio <=", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioLike(String value) {
            addCriterion("audio like", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioNotLike(String value) {
            addCriterion("audio not like", value, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioIn(List<String> values) {
            addCriterion("audio in", values, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioNotIn(List<String> values) {
            addCriterion("audio not in", values, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioBetween(String value1, String value2) {
            addCriterion("audio between", value1, value2, "audio");
            return (Criteria) this;
        }

        public Criteria andAudioNotBetween(String value1, String value2) {
            addCriterion("audio not between", value1, value2, "audio");
            return (Criteria) this;
        }

        public Criteria andProperityIsNull() {
            addCriterion("properity is null");
            return (Criteria) this;
        }

        public Criteria andProperityIsNotNull() {
            addCriterion("properity is not null");
            return (Criteria) this;
        }

        public Criteria andProperityEqualTo(String value) {
            addCriterion("properity =", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityNotEqualTo(String value) {
            addCriterion("properity <>", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityGreaterThan(String value) {
            addCriterion("properity >", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityGreaterThanOrEqualTo(String value) {
            addCriterion("properity >=", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityLessThan(String value) {
            addCriterion("properity <", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityLessThanOrEqualTo(String value) {
            addCriterion("properity <=", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityLike(String value) {
            addCriterion("properity like", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityNotLike(String value) {
            addCriterion("properity not like", value, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityIn(List<String> values) {
            addCriterion("properity in", values, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityNotIn(List<String> values) {
            addCriterion("properity not in", values, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityBetween(String value1, String value2) {
            addCriterion("properity between", value1, value2, "properity");
            return (Criteria) this;
        }

        public Criteria andProperityNotBetween(String value1, String value2) {
            addCriterion("properity not between", value1, value2, "properity");
            return (Criteria) this;
        }

        public Criteria andPhraseIsNull() {
            addCriterion("phrase is null");
            return (Criteria) this;
        }

        public Criteria andPhraseIsNotNull() {
            addCriterion("phrase is not null");
            return (Criteria) this;
        }

        public Criteria andPhraseEqualTo(String value) {
            addCriterion("phrase =", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseNotEqualTo(String value) {
            addCriterion("phrase <>", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseGreaterThan(String value) {
            addCriterion("phrase >", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseGreaterThanOrEqualTo(String value) {
            addCriterion("phrase >=", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseLessThan(String value) {
            addCriterion("phrase <", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseLessThanOrEqualTo(String value) {
            addCriterion("phrase <=", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseLike(String value) {
            addCriterion("phrase like", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseNotLike(String value) {
            addCriterion("phrase not like", value, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseIn(List<String> values) {
            addCriterion("phrase in", values, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseNotIn(List<String> values) {
            addCriterion("phrase not in", values, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseBetween(String value1, String value2) {
            addCriterion("phrase between", value1, value2, "phrase");
            return (Criteria) this;
        }

        public Criteria andPhraseNotBetween(String value1, String value2) {
            addCriterion("phrase not between", value1, value2, "phrase");
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