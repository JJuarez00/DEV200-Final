package data;




public class Reservation {
    private String reservationId;
    private String userId;
    private String storageUnitId;

    // Constructor
    public Reservation(String reservationId, String userId, String storageUnitId) {
        this.reservationId = reservationId;
        this.userId = userId;
        this.storageUnitId = storageUnitId;
    }

    // Getters and Setters
    public String getReservationId() {
        return reservationId;
    }

    public void setReservationId(String reservationId) {
        this.reservationId = reservationId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getStorageUnitId() {
        return storageUnitId;
    }

    public void setStorageUnitId(String storageUnitId) {
        this.storageUnitId = storageUnitId;
    }
}
