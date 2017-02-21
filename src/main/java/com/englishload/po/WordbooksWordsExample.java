package com.englishload.po;

import java.util.ArrayList;
import java.util.List;

public class WordbooksWordsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WordbooksWordsExample() {
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

        public Criteria andWordbooksWordsIdIsNull() {
            addCriterion("wordbooks_words_id is null");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdIsNotNull() {
            addCriterion("wordbooks_words_id is not null");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdEqualTo(Integer value) {
            addCriterion("wordbooks_words_id =", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdNotEqualTo(Integer value) {
            addCriterion("wordbooks_words_id <>", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdGreaterThan(Integer value) {
            addCriterion("wordbooks_words_id >", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("wordbooks_words_id >=", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdLessThan(Integer value) {
            addCriterion("wordbooks_words_id <", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdLessThanOrEqualTo(Integer value) {
            addCriterion("wordbooks_words_id <=", value, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdIn(List<Integer> values) {
            addCriterion("wordbooks_words_id in", values, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdNotIn(List<Integer> values) {
            addCriterion("wordbooks_words_id not in", values, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdBetween(Integer value1, Integer value2) {
            addCriterion("wordbooks_words_id between", value1, value2, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWordbooksWordsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("wordbooks_words_id not between", value1, value2, "wordbooksWordsId");
            return (Criteria) this;
        }

        public Criteria andWbookIdIsNull() {
            addCriterion("wbook_id is null");
            return (Criteria) this;
        }

        public Criteria andWbookIdIsNotNull() {
            addCriterion("wbook_id is not null");
            return (Criteria) this;
        }

        public Criteria andWbookIdEqualTo(Integer value) {
            addCriterion("wbook_id =", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdNotEqualTo(Integer value) {
            addCriterion("wbook_id <>", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdGreaterThan(Integer value) {
            addCriterion("wbook_id >", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("wbook_id >=", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdLessThan(Integer value) {
            addCriterion("wbook_id <", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdLessThanOrEqualTo(Integer value) {
            addCriterion("wbook_id <=", value, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdIn(List<Integer> values) {
            addCriterion("wbook_id in", values, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdNotIn(List<Integer> values) {
            addCriterion("wbook_id not in", values, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdBetween(Integer value1, Integer value2) {
            addCriterion("wbook_id between", value1, value2, "wbookId");
            return (Criteria) this;
        }

        public Criteria andWbookIdNotBetween(Integer value1, Integer value2) {
            addCriterion("wbook_id not between", value1, value2, "wbookId");
            return (Criteria) this;
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