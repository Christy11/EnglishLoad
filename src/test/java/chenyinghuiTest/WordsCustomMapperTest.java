package chenyinghuiTest;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.englishload.mapper.CourseMapper;
import com.englishload.mapper.CourseUserMapper;
import com.englishload.mapper.HearingCustomMapper;
import com.englishload.mapper.WordbooksCustomMapper;
import com.englishload.mapper.WordbooksMapper;
import com.englishload.mapper.WordbooksWordsCustomMapper;
import com.englishload.mapper.WordsCustomMapper;
import com.englishload.po.Course;
import com.englishload.po.CourseUser;
import com.englishload.po.HearingCustom;
import com.englishload.po.WordbooksCustom;
import com.englishload.po.WordbooksWordsCustom;
import com.englishload.po.WordsCustom;

public class WordsCustomMapperTest {
	
	private ApplicationContext applicationContext;
	private WordbooksWordsCustomMapper wordbooksWordsCustomMapper;
	private WordsCustomMapper wordsCustomMapper;
	private WordbooksMapper wordbooksMapper;
	private HearingCustomMapper hearingCustomMapper;
	private CourseUserMapper courseUserMapper;

	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis/spring-mybatis.xml");
		//wordsCustomMapper = (WordsCustomMapper) applicationContext.getBean("wordsCustomMapper");
		courseUserMapper=(CourseUserMapper) applicationContext.getBean("courseUserMapper");
	}

	@Test
	public void test() {
		CourseUser record=new CourseUser();
		record.setUserId(38);
		record.setCourseId(3);
    int a=courseUserMapper.insertCourseUser(record);
		System.out.println(a);
	}

}
