package model;
public enum Wood { 

  红木, 楠木,白木, 木, 紫木, 梨木, 檀木;

  public String toString() {
    switch(this) {
     
      case 红木:           return "红木";
      case 楠木:              return "楠木";
      case 白木:           return "白木";
      case 木:              return "木";
      case 紫木:         return "紫木";
      case 梨木:              return "梨木";
      case 檀木:              return "檀木";
      default:  return "unspecified";
    }
  }
}
