package com.company.Main;

import java.sql.*;

public class DeleteRecords {
    private Connection connect() throws ClassNotFoundException {
        // SQLite connection string
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Lenovo\\IdeaProjects\\FirstWebApp\\src\\main\\resources\\users.db";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
    public void deleteMeal(int meal_id){
        String sql = "DELETE FROM MEAL WHERE meal_id = ?";

        try {
            Connection conn = this.connect();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, meal_id);
            pstmt.executeUpdate();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }

}
