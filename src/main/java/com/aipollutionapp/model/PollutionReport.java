package com.aipollutionapp.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "pollution_reports")
public class PollutionReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;
    private String city;

    @Column(name = "pollution_type")
    private String pollutionType;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Lob
    @Column(name = "photo")
    private byte[] photo; // Must be byte[] for bytea

    // Constructors, getters, setters
    public PollutionReport() {}

    public PollutionReport(String title, String city, String pollutionType,
                           String description, byte[] photo) {
        this.title = title;
        this.city = city;
        this.pollutionType = pollutionType;
        this.description = description;
        this.photo = photo;
        this.createdAt = LocalDateTime.now();
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPollutionType() {
		return pollutionType;
	}

	public void setPollutionType(String pollutionType) {
		this.pollutionType = pollutionType;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

    // Getters and setters ...
    
}
