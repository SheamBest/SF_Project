public class CarRentServices {

// Method to set the End_Date__c field to today for a list of records
public static void setEndDate(List<Deal__c> deals) {
    if (deals != null && !deals.isEmpty()) {
        for (Deal__c deal : deals) {
            deal.End_Date__c = Date.today();
        }
        
        update deals;
    }
}

// Method to filter deals based on their Status__c field
public static List<Deal__c> filterFinished(List<Deal__c> deals, String status) {
    List<Deal__c> filteredDeals = new List<Deal__c>();

    for (Deal__c deal : deals) {
        if (deal.Status__c != null && deal.Status__c.equalsIgnoreCase(status)) {
            filteredDeals.add(deal);
        }
    }

    return filteredDeals;
}
}
