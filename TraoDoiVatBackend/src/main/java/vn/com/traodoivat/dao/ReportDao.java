package vn.com.traodoivat.dao;

import java.util.List;

import vn.com.traodoivat.model.Report;

public interface ReportDao {
	public void insertReport(Report report);

	public void updateReport(Report report);

	public void deleteReport(int repID);

	public List<Report> listReport();
}
