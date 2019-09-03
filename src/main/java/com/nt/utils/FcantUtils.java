package com.nt.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FcantUtils {
	 /**
     * 设置页面的初始值
     *
     * @param page
     * @return Page
     * @author Fcscanf
     * @date 上午 10:55 2019-08-10/0010
     */
	/*
	 * public static Page setPageManager(Page page) { if (page.getPageNumber() == 1)
	 * { return page; } else { page.setStart((page.getPageNumber() - 1) *
	 * page.getSize()); return page; } }
	 */

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * 解决SimpleDateFormat会线程异常的情况
     *
     * @param date
     * @return String
     * @throws ParseException
     * @author Fcscanf
     * @date 下午 13:22 2019-08-10/0010
     */
    public static String formatDate(Date date) throws ParseException {
        synchronized(sdf){
            return sdf.format(date);
        }
    }

    /**
     * 解决SimpleDateFormat会线程异常的情况
     *
     * @param strDate
     * @return Date
     * @throws ParseException
     * @author Fcscanf
     * @date 下午 13:22 2019-08-10/0010
     */
    public static Date parse(String strDate) throws ParseException {
        synchronized(sdf){
            return sdf.parse(strDate);
        }
    }

}
