package com.hbrassapp.demo.controllers;

import com.hbrassapp.demo.Models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;
import java.util.UUID;


@Controller
public class MainController {

    @Autowired
    BrokerCompany brokerCompanyRepo;
    @Autowired
    BrokerContractRepo brokerContractRepo;
    @Autowired
    BrokerInfoRepo brokerInfoRepo;
    @Autowired
    ClientRepo clientRepo;
    @Autowired
    CountryRepo countryRepo;
    @Autowired
    DotInspectionRepo dotInspectionRepo;
    @Autowired
    DropOffLocation dropOffLocationRepo;
    @Autowired
    EmergencyContactRepo emergencyContactRepo;
    @Autowired
    employeerepo employeerepo;
    @Autowired
    EmployeeStatusRepo employeeStatusRepo;
    @Autowired
    IFTA_StickerRepo ifta_stickerRepo;
    @Autowired
    IncidentRepo incidentRepo;
    @Autowired
    IncidentStatusRepo incidentStatusRepo;
    @Autowired
    IncidentTypeRepo incidentTypeRepo;
    @Autowired
    IncomeRepo incomeRepo;
    @Autowired
    InsuranceRepo insuranceRepo;
    @Autowired
    InvoiceRepo invoiceRepo;
    @Autowired
    InvoiceStatusRepo invoiceStatusRepo;
    @Autowired
    LoadBoardRepo loadBoardRepo;
    @Autowired
    LoadsRepo loadsRepo;
    @Autowired
    MaintenanceRepo maintenanceRepo;
    @Autowired
    MiscellaneousRepo miscellaneousRepo;
    @Autowired
    OfficePositionRepo officePositionRepo;
    @Autowired
    PayrollRepo payrollRepo;
    @Autowired
    PickUpLocationRepo pickUpLocationRepo;
    @Autowired
    ScheduleRepo scheduleRepo;
    @Autowired
    StatesRepo statesRepo;
    @Autowired
    SystemLoginRepo systemLoginRepo;
    @Autowired
    TireRepo tireRepo;
    @Autowired
    TireVendorRepo tireVendorRepo;
    @Autowired
    TrailerRepo trailerRepo;
    @Autowired
    TripExpenseRepo tripExpenseRepo;
    @Autowired
    TruckDriverRepo truckDriverRepo;
    @Autowired
    TruckRepo truckRepo;
    @Autowired
    TruckLogRepo truckLogRepo;
    @Autowired
    VendorRepo vendorRepo;


    //Methods to display pages

    @RequestMapping("/")
    public ModelAndView view(){
        ModelAndView mv = new ModelAndView("signin");
        mv.addObject("thelist",systemLoginRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/signup")
    public ModelAndView register(){
        ModelAndView mv = new ModelAndView("signup");
        return mv;
    }

    @RequestMapping(value = "/back")
    public ModelAndView logout(){
        ModelAndView mv = new ModelAndView("signin");
        return mv;
    }

    @RequestMapping(value = "/tables")
    public ModelAndView viewTables() {
        ModelAndView mv = new ModelAndView("tables");
        return mv;
    }

    @RequestMapping(value = "/tables1")
    public ModelAndView viewTables1() {
        ModelAndView mv = new ModelAndView("tables1");
        return mv;
    }

    @RequestMapping(value = "/brokerCompany", method = RequestMethod.GET)
    public ModelAndView viewBrokerCompany() {
        ModelAndView mv = new ModelAndView("brokerCompany");
        mv.addObject("brokerCompanyList", brokerCompanyRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/systemLogin")
    public ModelAndView viewSysLog() {
        ModelAndView mv = new ModelAndView("systemLogin");
        mv.addObject("systemLoginList", systemLoginRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerContracts")
    public ModelAndView viewContracts() {
        ModelAndView mv = new ModelAndView("brokerContracts");
        mv.addObject("brokerContractList", brokerContractRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerInfo")
    public ModelAndView viewBrokerInfo() {
        ModelAndView mv = new ModelAndView("brokerInfo");
        mv.addObject("brokerInfoList", brokerInfoRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/client")
    public ModelAndView viewClient() {
        ModelAndView mv = new ModelAndView("client");
        mv.addObject("clientList", clientRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/country")
    public ModelAndView viewCountry() {
        ModelAndView mv = new ModelAndView("country");
        mv.addObject("countryList", countryRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/dotInspection")
    public ModelAndView viewDotInspection() {
        ModelAndView mv = new ModelAndView("dotInspection");
        mv.addObject("dotInspectionList", dotInspectionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/dropOffLocation")
    public ModelAndView viewDropOffLocation() {
        ModelAndView mv = new ModelAndView("dropOffLocation");
        mv.addObject("dropOffLocationList", dropOffLocationRepo.findAll());
        return mv;
    }


    @RequestMapping(value = "/emergencyContacts")
    public ModelAndView viewemergencyContacts() {
        ModelAndView mv = new ModelAndView("emergencyContacts");
        mv.addObject("emergencyContactsList", emergencyContactRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/employee")
    public ModelAndView viewEmployee() {
        ModelAndView mv = new ModelAndView("employee");
        mv.addObject("employeeList", employeerepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/employeeStatus")
    public ModelAndView viewemployeeStatus() {
        ModelAndView mv = new ModelAndView("employeeStatus");
        mv.addObject("employeeStatusList", employeeStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/iftaSticker")
    public ModelAndView viewiftaSticker() {
        ModelAndView mv = new ModelAndView("iftaSticker");
        mv.addObject("iftaStickerList", ifta_stickerRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incident")
    public ModelAndView viewincident()
    {
        ModelAndView mv = new ModelAndView("incident");
        mv.addObject("incidentList", incidentRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incidentStatus")
    public ModelAndView viewincidentStatus()
    {
        ModelAndView mv = new ModelAndView("incidentStatus");
        mv.addObject("incidentStatusList", incidentStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incidentType")
    public ModelAndView viewincidentType()
    {
        ModelAndView mv = new ModelAndView("incidentType");
        mv.addObject("incidentTypeList", incidentTypeRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/income")
    public ModelAndView viewincome() {
        ModelAndView mv = new ModelAndView("income");
        mv.addObject("incomeList", incomeRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/insurance")
    public ModelAndView viewinsurance() {
        ModelAndView mv = new ModelAndView("insurance");
        mv.addObject("insuranceList", insuranceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/invoice")
    public ModelAndView viewinvoice() {
        ModelAndView mv = new ModelAndView("invoice");
        mv.addObject("invoiceList", invoiceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/invoiceStatus")
    public ModelAndView viewinvoiceStatus() {
        ModelAndView mv = new ModelAndView("invoiceStatus");
        mv.addObject("invoiceStatusList", invoiceStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/loadBoard")
    public ModelAndView viewloadBoard() {
        ModelAndView mv = new ModelAndView("loadBoard");
        mv.addObject("loadBoardList", loadBoardRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/loads")
    public ModelAndView viewLoads() {
        ModelAndView mv = new ModelAndView("loads");
        mv.addObject("loadsList", loadsRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/maintenance")
    public ModelAndView viewmaintenance() {
        ModelAndView mv = new ModelAndView("maintenance");
        mv.addObject("maintenanceList", maintenanceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/miscellaneous")
    public ModelAndView viewmiscellaneous() {
        ModelAndView mv = new ModelAndView("miscellaneous");
        mv.addObject("miscellaneousList", miscellaneousRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/officePosition")
    public ModelAndView viewofficePosition() {
        ModelAndView mv = new ModelAndView("officePosition");
        mv.addObject("officePositionList", officePositionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/payroll")
    public ModelAndView viewpayroll() {
        ModelAndView mv = new ModelAndView("payroll");
        mv.addObject("payrollList", payrollRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/puLocation")
    public ModelAndView viewpuLocation() {
        ModelAndView mv = new ModelAndView("puLocation");
        mv.addObject("puLocationList", pickUpLocationRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/schedule")
    public ModelAndView viewschedule() {
        ModelAndView mv = new ModelAndView("schedule");
        mv.addObject("scheduleList", scheduleRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/states")
    public ModelAndView viewstates() {
        ModelAndView mv = new ModelAndView("states");
        mv.addObject("statesList", statesRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/tire")
    public ModelAndView viewtire() {
        ModelAndView mv = new ModelAndView("tire");
        mv.addObject("tireList", tireRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/tireVendor")
    public ModelAndView viewtireVendor() {
        ModelAndView mv = new ModelAndView("tireVendor");
        mv.addObject("tireVendorList", tireVendorRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Trailer")
    public ModelAndView viewtrailer() {
        ModelAndView mv = new ModelAndView("Trailer");
        mv.addObject("trailerList", trailerRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/TripExpense")
    public ModelAndView viewtripExpense() {
        ModelAndView mv = new ModelAndView("TripExpense");
        mv.addObject("tripExpenseList", tripExpenseRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Truck")
    public ModelAndView viewtruck() {
        ModelAndView mv = new ModelAndView("Truck");
        mv.addObject("truckList", truckRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/truckDriver")
    public ModelAndView viewtruckDriver() {
        ModelAndView mv = new ModelAndView("truckDriver");
        mv.addObject("truckdriverList", truckDriverRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/trucklog")
    public ModelAndView viewtruckLog() {
        ModelAndView mv = new ModelAndView("trucklog");
        mv.addObject("trucklogList", truckLogRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Vendors")
    public ModelAndView viewvendor() {
        ModelAndView mv = new ModelAndView("Vendors");
        mv.addObject("vendorList", vendorRepo.findAll());
        return mv;
    }

    // Add Functionalities
    @RequestMapping(value = "/submitBrokerCompany", method = RequestMethod.POST)
    public ModelAndView changesBrokerCompany(@RequestParam("brokerID") String id,
                                             @RequestParam("brokerName") String brokerName,
                                             @RequestParam("streetAddress") String streetAddress,
                                             @RequestParam("stateCode") String stateCode,
                                             @RequestParam("zipCode") String zipCode,
                                             @RequestParam("phoneNumber") String phoneNumber,
                                             @RequestParam("email") String email) {
        ModelAndView mv = new ModelAndView("redirect:/brokerCompany");
        Broker_Company brokerCompany = new Broker_Company();
        if (id.isEmpty()) {
            brokerCompany.setBroker_Name(brokerName);
            brokerCompany.setStreet_Address(streetAddress);
            brokerCompany.setState_Code(stateCode);
            brokerCompany.setZip_Code(zipCode);
            brokerCompany.setPhone_Number(phoneNumber);
            brokerCompany.setEmail_Address(email);
            brokerCompanyRepo.save(brokerCompany);
        } else {
            brokerCompany.setBroker_ID(id);
            brokerCompany.setBroker_Name(brokerName);
            brokerCompany.setStreet_Address(streetAddress);
            brokerCompany.setState_Code(stateCode);
            brokerCompany.setZip_Code(zipCode);
            brokerCompany.setPhone_Number(phoneNumber);
            brokerCompany.setEmail_Address(email);
            brokerCompanyRepo.save(brokerCompany);
        }
        return mv;
    }

    @RequestMapping(value = "/submitLoads", method = RequestMethod.POST)
    public ModelAndView changesLoads(@RequestParam("loadID") String id,
                                     @RequestParam("dateLoads") String dateLoads,
                                     @RequestParam("pickUP") String pickUP,
                                     @RequestParam("dropOff") String dropOff,
                                     @RequestParam("vinNumber") String vinNumber,
                                     @RequestParam("trailerID") String trailerID,
                                     @RequestParam("driverID") String driverID,
                                     @RequestParam("deadHD") String deadHD,
                                     @RequestParam("loadedMiles") String loadedMiles,
                                     @RequestParam("totalMiles") String totalMiles,
                                     @RequestParam("driverPay") String driverPay,
                                     @RequestParam("remarks") String remarks) {
        ModelAndView mv = new ModelAndView("redirect:/loads");
        Loads loads = new Loads();
        if (id.isEmpty()) {
            loads.setDate(dateLoads);
            loads.setPick_Up_ID(pickUP);
            loads.setDrop_Off_ID(dropOff);
            loads.setTruck_ID_VIN(vinNumber);
            loads.setTrailer_ID(trailerID);
            loads.setDriver_ID(driverID);
            loads.setDead_Head(deadHD);
            loads.setLoaded_Miles(loadedMiles);
            loads.setTotal_Miles(totalMiles);
            loads.setDriver_Pay(driverPay);
            loads.setRemarks(remarks);
            loadsRepo.save(loads);
        } else {
            loads.setLoad_ID(id);
            loads.setDate(dateLoads);
            loads.setPick_Up_ID(pickUP);
            loads.setDrop_Off_ID(dropOff);
            loads.setTruck_ID_VIN(vinNumber);
            loads.setTrailer_ID(trailerID);
            loads.setDriver_ID(driverID);
            loads.setDead_Head(deadHD);
            loads.setLoaded_Miles(loadedMiles);
            loads.setTotal_Miles(totalMiles);
            loads.setDriver_Pay(driverPay);
            loads.setRemarks(remarks);
            loadsRepo.save(loads);
        }
        return mv;
    }

    @RequestMapping(value = "/addBrokerCompany")
    public ModelAndView addBrokerCompany() {
        ModelAndView mv = new ModelAndView("addBrokerCompany");
        return mv;
    }

    @RequestMapping(value = "/addClient")
    public ModelAndView addClient() {
        ModelAndView mv = new ModelAndView("addClient");
        return mv;
    }

    @RequestMapping(value = "/addBrokerInfo")
    public ModelAndView addBrokerInfo() {
        ModelAndView mv = new ModelAndView("addBrokerInfo");
        return mv;
    }

    @RequestMapping(value = "/submitBrokerContract", method = RequestMethod.POST)
    public ModelAndView changesBrokerContract(@RequestParam("contractID") String contractID,
                                              @RequestParam("invoiceID") String invoiceID,
                                              @RequestParam("brokerID") String brokerID,
                                              @RequestParam("rate") String rate,
                                              @RequestParam("fare") String fare,
                                              @RequestParam("commission") String commission,
                                              @RequestParam("contractStatus") String status) {
        ModelAndView mv = new ModelAndView("redirect:/brokerContracts");
        Broker_Contract brokerContract = new Broker_Contract();
        if (contractID.isEmpty()) {
            brokerContract.setInvoice_ID(invoiceID);
            brokerContract.setBroker_ID(brokerID);
            brokerContract.setRate(rate);
            brokerContract.setFare(fare);
            brokerContract.setCommission(commission);
            brokerContract.setContract_Status(status);
            brokerContractRepo.save(brokerContract);
        } else {
            brokerContract.setBroker_Contract_ID(contractID);
            brokerContract.setInvoice_ID(invoiceID);
            brokerContract.setBroker_ID(brokerID);
            brokerContract.setRate(rate);
            brokerContract.setFare(fare);
            brokerContract.setCommission(commission);
            brokerContract.setContract_Status(status);
            brokerContractRepo.save(brokerContract);
        }
        return mv;
    }

    @RequestMapping(value = "/submitBrokerInfo", method = RequestMethod.POST)
    public ModelAndView submitBrokerInfo(@RequestParam("contactID") String contactID,
                                         @RequestParam("firstName") String firstName,
                                         @RequestParam("lastName") String lastName,
                                         @RequestParam("email") String email,
                                         @RequestParam("phoneNumber") String phoneNumber,
                                         @RequestParam("brokerID") String brokerID) {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        Broker_Info brokerInfo = new Broker_Info();
        if (contactID.isEmpty()) {
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfoRepo.save(brokerInfo);
        }
        else {
            brokerInfo.setContact_ID(contactID);
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfoRepo.save(brokerInfo);
        }
        return mv;
    }

    @RequestMapping(value = "/submitClient", method = RequestMethod.POST)
    public ModelAndView submitClient(@RequestParam("clientID") String clientID,
                                     @RequestParam("clientName") String clientName,
                                     @RequestParam("streetAddress") String streetAddress,
                                     @RequestParam("city")String city,
                                     @RequestParam("stateCode") String stateCode,
                                     @RequestParam("zipCode") String zipCode,
                                     @RequestParam("phoneNumber") String phoneNumber,
                                     @RequestParam("email") String email) {
        ModelAndView mv = new ModelAndView("redirect:/client");
        Client client = new Client();
        if (clientID.isEmpty()) {
            client.setClient_Name(clientName);
            client.setStreet_Address(streetAddress);
            client.setCity(city);
            client.setState_Code(stateCode);
            client.setZip_Code(zipCode);
            client.setPhone_Number(phoneNumber);
            client.setEmail(email);
            clientRepo.save(client);
        }
        else {
            client.setClient_ID(clientID);
            client.setClient_Name(clientName);
            client.setStreet_Address(streetAddress);
            client.setCity(city);
            client.setState_Code(stateCode);
            client.setZip_Code(zipCode);
            client.setPhone_Number(phoneNumber);
            client.setEmail(email);
            clientRepo.save(client);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIncome", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("incomeID") String incomeID,
                                  @RequestParam("loadID") String loadID,
                                  @RequestParam("loadFare") String loadFare,
                                  @RequestParam("commission") String commission,
                                  @RequestParam("insurance") String insurance,
                                  @RequestParam("tripExpenseID") String tripExpenseID,
                                  @RequestParam("totalIncome") String totalIncome) {
        ModelAndView mv = new ModelAndView("redirect:/income");
        Income income = new Income();
        if (incomeID.isEmpty()) {
            income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
            income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            incomeRepo.save(income);
        } else {
            income.setIncome_ID(incomeID);
            //income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
            //income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            incomeRepo.save(income);
        }
        return mv;
    }

    @RequestMapping(value = "/submitDotInspection", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("dotInspectionID") String dotInspectionID,
                                  @RequestParam("vin") String vin,
                                  @RequestParam("cDate") String cDate,
                                  @RequestParam("eDate") String eDate) {
        ModelAndView mv = new ModelAndView("redirect:/dotInspection");
        Dot_Inspection dinspection = new Dot_Inspection();
        States states = new States();
        if (dotInspectionID.isEmpty()) {
            dinspection.setTruck_ID_VIN(vin);
            dinspection.setDot_Certification_Date(cDate);
            dinspection.setDot_Expiration_Date(eDate);
            dotInspectionRepo.save(dinspection);
        } else {
            dinspection.setDot_Inspection_ID(dotInspectionID);
            dinspection.setTruck_ID_VIN(vin);
            dinspection.setDot_Certification_Date(cDate);
            dinspection.setDot_Expiration_Date(eDate);
            dotInspectionRepo.save(dinspection);
        }
        return mv;
    }

    @RequestMapping(value = "/submitMisc", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("miscID") String miscID,
                                  @RequestParam("cost") String cost,
                                  @RequestParam("desc") String desc) {
        ModelAndView mv = new ModelAndView("redirect:/miscellaneous");
        Miscellaneous misc = new Miscellaneous();
        if (miscID.isEmpty()) {
            misc.setCost(cost);
            misc.setDescription(desc);
            miscellaneousRepo.save(misc);
        } else {
            misc.setMiscellaneous_ID(miscID);
            misc.setCost(cost);
            misc.setDescription(desc);
            miscellaneousRepo.save(misc);
        }
        return mv;
    }

    @RequestMapping(value = "/submitDOL", method = RequestMethod.POST)
    public ModelAndView addDropOffLocation(@RequestParam("dropOffID") String dropOffID,
                                           @RequestParam("tCode") String tCode,
                                           @RequestParam("dDate") String dDate,
                                           @RequestParam("sAddy") String sAddy,
                                           @RequestParam("dCity") String dCity,
                                           @RequestParam("sCode") String sCode,
                                           @RequestParam("zCode") String zCode) {
        ModelAndView mv = new ModelAndView("redirect:/dropOffLocation");
        Drop_Off_Location dol = new Drop_Off_Location();
        if (dropOffID.isEmpty()) {
            dol.setDrop_Off_Tracker_Code(tCode);
            dol.setDrop_Off_Date(dDate);
            dol.setStreet_Address(sAddy);
            dol.setCity(dCity);
            dol.setState_Code(sCode);
            dol.setZip_Code(zCode);
            dropOffLocationRepo.save(dol);
        } else {
            dol.setDrop_Off_ID(dropOffID);
            dol.setDrop_Off_Tracker_Code(tCode);
            dol.setDrop_Off_Date(dDate);
            dol.setStreet_Address(sAddy);
            dol.setCity(dCity);
            dol.setState_Code(sCode);
            dol.setZip_Code(zCode);
            dropOffLocationRepo.save(dol);
        }
        return mv;
    }

    @RequestMapping(value = "/submitMaintenance", method = RequestMethod.POST)
    public ModelAndView addMaintenance(@RequestParam("MaintenanceID") String MaintenanceID,
                                       @RequestParam("Mileage") String Mileage,
                                       @RequestParam("ServiceDate") String ServiceDate,
                                       @RequestParam("Service") String Service,
                                       @RequestParam("ServiceFee") String ServiceFee,
                                       @RequestParam("TruckIdVin") String TruckIdVin)
    {
        ModelAndView mv = new ModelAndView("redirect:/maintenance");
        Maintenance maintenance = new Maintenance();
        if (MaintenanceID.isEmpty()) {
            maintenance.setMileage(Mileage);
            maintenance.setServiceDate(ServiceDate);
            maintenance.setService(Service);
            maintenance.setServiceFee(ServiceFee);
            maintenance.setTruckIDVIN(TruckIdVin);
            maintenanceRepo.save(maintenance);
        } else {
            maintenance.setMaintenanceID(MaintenanceID);
            maintenance.setMileage(Mileage);
            maintenance.setServiceDate(ServiceDate);
            maintenance.setService(Service);
            maintenance.setServiceFee(ServiceFee);
            maintenance.setTruckIDVIN(TruckIdVin);
            maintenanceRepo.save(maintenance);
        }
        return mv;
    }

    @RequestMapping(value = "/submitPickUpLocation", method = RequestMethod.POST)
    public ModelAndView addPickUpLocation(@RequestParam("PickUpLocationID") String PickUpLocationID,
                                          @RequestParam("PickUpTrackerCode") String PickUpTrackerCode,
                                          @RequestParam("PickUpDate") String PickUpDate,
                                          @RequestParam("StreetAddress") String StreetAddress,
                                          @RequestParam("City") String City,
                                          @RequestParam("StateCode") String StateCode,
                                          @RequestParam("Zipcode") String Zipcode) {
        ModelAndView mv = new ModelAndView("redirect:/puLocation");
        Pick_Up_location pul = new Pick_Up_location();
        if (PickUpLocationID.isEmpty()) {
            pul.setPuTrackerCode(PickUpTrackerCode);
            pul.setPuDate(PickUpDate);
            pul.setStreetAddress(StreetAddress);
            pul.setCity(City);
            pul.setStateCode(StateCode);
            pul.setZipCode(Zipcode);
            pickUpLocationRepo.save(pul);
        } else {
            pul.setPickUpID(PickUpLocationID);
            pul.setPuTrackerCode(PickUpTrackerCode);
            pul.setPuDate(PickUpDate);
            pul.setStreetAddress(StreetAddress);
            pul.setCity(City);
            pul.setStateCode(StateCode);
            pul.setZipCode(Zipcode);
            pickUpLocationRepo.save(pul);
        }
        return mv;
    }

    @RequestMapping(value = "/submitEmergencyContact", method = RequestMethod.POST)
    public ModelAndView changesEmergencyContact(@RequestParam("EmergencyContactID") String EmergencyContactID,
                                                @RequestParam("FirstName") String FirstName,
                                                @RequestParam("LastName") String LastName,
                                                @RequestParam("Relationship") String Relationship,
                                                @RequestParam("PhoneNumber") String PhoneNumber,
                                                @RequestParam("StreetAddress") String StreetAddress) {
        ModelAndView mv = new ModelAndView("redirect:/emergencyContacts");
        Emergency_Contact emergencyContact = new Emergency_Contact();
        if (EmergencyContactID.isEmpty()) {
            emergencyContact.setFirst_Name(FirstName);
            emergencyContact.setLast_Name(LastName);
            emergencyContact.setRelationship(Relationship);
            emergencyContact.setPhone_Number(PhoneNumber);
            emergencyContact.setStreet_Address(StreetAddress);
            emergencyContactRepo.save(emergencyContact);
        } else {
            emergencyContact.setEmergency_Contact_ID(EmergencyContactID);
            emergencyContact.setFirst_Name(FirstName);
            emergencyContact.setLast_Name(LastName);
            emergencyContact.setRelationship(Relationship);
            emergencyContact.setPhone_Number(PhoneNumber);
            emergencyContact.setStreet_Address(StreetAddress);
            emergencyContactRepo.save(emergencyContact);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIncidentType", method = RequestMethod.POST) //Method to create new entry
    public ModelAndView addIncidentType(@RequestParam("incidentTypeID") String incidentTypeID,
                                        @RequestParam("incidentType") String incidentType) {
        ModelAndView mv = new ModelAndView("redirect:/incidentType");
        Incident_Type incident_type = new Incident_Type();
        if (incidentTypeID.isEmpty()) {
            incident_type.setType_of_Incident(incidentType);
            incidentTypeRepo.save(incident_type);
        } else {
            incident_type.setType_of_Incident(incidentType);
            incidentTypeRepo.save(incident_type);
        }
        return mv;
    }

    @RequestMapping(value = "/submitInvoiceStatus", method = RequestMethod.POST)
    public ModelAndView addInvoiceStatus(@RequestParam("invoiceStatusID") String invoiceStatusID,
                                         @RequestParam("invoiceStatus") String invoiceStatus){

        ModelAndView mv = new ModelAndView("redirect:/invoiceStatus");
        Invoice_Status invoiceStat = new Invoice_Status();
        if (invoiceStatusID.isEmpty()) {
            invoiceStat.setInvoice_Status(invoiceStatus);
            invoiceStatusRepo.save(invoiceStat);
        } else {
            invoiceStat.setInvoice_ID(invoiceStatusID);
            invoiceStat.setInvoice_Status(invoiceStatus);
            invoiceStatusRepo.save(invoiceStat);
        }
        return mv;
    }

    @RequestMapping(value = "/submitInsuranceTable", method = RequestMethod.POST)
    public ModelAndView addInsu(@RequestParam("insureID") String insureID,
                                @RequestParam("insuranceID") String insuranceID,
                                @RequestParam("insuranceType") String insuranceType,
                                @RequestParam("coverageExpiration") String coverageExpiration){
        ModelAndView mv = new ModelAndView("redirect:/insurance");
        Insurance insur = new Insurance();
        if (insureID.isEmpty()) {
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insuranceRepo.save(insur);
        } else {
            insur.setInsure_ID(insureID);
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insuranceRepo.save(insur);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIfta", method = RequestMethod.POST)
    public ModelAndView addIfta(@RequestParam("iftaID") String iftaID,
                                @RequestParam("ifta") String ifta,
                                @RequestParam("vin") String vin,
                                @RequestParam("eDate") String eDate){

        ModelAndView mv = new ModelAndView("redirect:/iftaSticker");
        IFTA_Sticker iftas = new IFTA_Sticker();
        if (iftaID.isEmpty()) {
            iftas.setIFTA_Status(ifta);
            iftas.setTruck_ID_VIN(vin);
            iftas.setIFTA_Expiration_Date(eDate);
            ifta_stickerRepo.save(iftas);
        } else {
            iftas.setIFTA_ID(iftaID);
            iftas.setIFTA_Status(ifta);
            iftas.setTruck_ID_VIN(vin);
            iftas.setIFTA_Expiration_Date(eDate);
            ifta_stickerRepo.save(iftas);
        }
        return mv;
    }

    @RequestMapping(value = "/submitTire", method = RequestMethod.POST)
    public ModelAndView addIfta(@RequestParam("tireID") String tireID,
                                @RequestParam("tire") String tire){

        ModelAndView mv = new ModelAndView("redirect:/tire");
        Tire tire1 = new Tire();
        if (tireID.isEmpty()) {
            tire1.setTire_Name(tire);
            tireRepo.save(tire1);
        } else {
            tire1.setTire_ID(tireID);
            tire1.setTire_Name(tire);
            tireRepo.save(tire1);
        }
        return mv;
    }

    @RequestMapping(value = "/submitTrailer", method = RequestMethod.POST)
    public ModelAndView addTrailer(@RequestParam("cID") String cID,
                                   @RequestParam("trailerID") String trailerID,
                                   @RequestParam("tc") String tc,
                                   @RequestParam("tot") String tot,
                                   @RequestParam("weight") String weight,
                                   @RequestParam("lcp") String lcp){
        ModelAndView mv = new ModelAndView("redirect:/Trailer");
        Trailer trailer = new Trailer();
        if (cID.isEmpty()) {
            trailer.setTrailer_ID(trailerID);
            trailer.setTrailer_Code(tc);
            trailer.setType_Of_Trailer(tot);
            trailer.setWeight_Of_Trailer(weight);
            trailer.setLicense_Plate(lcp);
            trailerRepo.save(trailer);
        } else {
            trailer.setColumn_ID(cID);
            trailer.setTrailer_ID(trailerID);
            trailer.setTrailer_Code(tc);
            trailer.setType_Of_Trailer(tot);
            trailer.setWeight_Of_Trailer(weight);
            trailer.setLicense_Plate(lcp);
            trailerRepo.save(trailer);
        }
        return mv;
    }

    @RequestMapping(value = "/submitCountry", method = RequestMethod.POST)
    public ModelAndView addCountry(@RequestParam("colID") String colID,
                                   @RequestParam("cc") String cc,
                                   @RequestParam("c") String c){
        ModelAndView mv = new ModelAndView("redirect:/country");
        Country country = new Country();
        if (colID.isEmpty()) {
            country.setCountry_Code(cc);
            country.setCountry_Name(c);
            countryRepo.save(country);
        } else {
            country.setColumn_ID(colID);
            country.setCountry_Code(cc);
            country.setCountry_Name(c);
            countryRepo.save(country);
        }
        return mv;
    }

    @RequestMapping(value = "/submitDriverTruck", method = RequestMethod.POST)
    public ModelAndView addTdriver(@RequestParam("truckDriverID") String truckDriverID,
                                   @RequestParam("driverID") String driverID,
                                   @RequestParam("driverLicenseType") String driverLicenseType,
                                   @RequestParam("driverStateCode") String driverStateCode) {

        ModelAndView mv = new ModelAndView("redirect:/truckDriver");
        Truck_Driver trudriv = new Truck_Driver();
        if (truckDriverID.isEmpty()) {
            trudriv.setDriver_ID(driverID);
            trudriv.setLicense_Type(driverLicenseType);
            trudriv.setState_Code(driverStateCode);
            truckDriverRepo.save(trudriv);
        } else {
            trudriv.setTruck_Driver_ID(truckDriverID);
            trudriv.setDriver_ID(driverID);
            trudriv.setLicense_Type(driverLicenseType);
            trudriv.setState_Code(driverStateCode);
            truckDriverRepo.save(trudriv);
        }
        return mv;
    }

    @RequestMapping(value = "/submitEmployeeStatus", method = RequestMethod.POST)
    public ModelAndView addEmpStatus(@RequestParam("empID") String empID,
                                     @RequestParam("eStatus") String eStatus){

        ModelAndView mv = new ModelAndView("redirect:/employeeStatus");
        Employee_Status es = new Employee_Status();
        if (empID.isEmpty()) {
            es.setEmployee_Status(eStatus);
            employeeStatusRepo.save(es);
        } else {
            es.setEmployee_ID(empID);
            es.setEmployee_Status(eStatus);
            employeeStatusRepo.save(es);
        }
        return mv;
    }

    @RequestMapping(value = "/addVendors", method = RequestMethod.POST)
    public ModelAndView changesVendor(@RequestParam("vendorID") String vendorID,
                                      @RequestParam("nameVendor") String nameVendor,
                                      @RequestParam("vendorPhoneNumber") String vendorPhoneNumber,
                                      @RequestParam("vendorStreetAddress") String vendorStreetAddress,
                                      @RequestParam("vendorCity") String vendorCity,
                                      @RequestParam("vendorStateCode") String vendorStateCode,
                                      @RequestParam("vendorZipCode") String vendorZipCode,
                                      @RequestParam("vendorEmail") String vendorEmail,
                                      @RequestParam("vendorTracker") String vendorTracker){
        ModelAndView mv = new ModelAndView("redirect:/Vendors");
        Vendor Vendors = new Vendor();
        if (vendorID.isEmpty()) {
            Vendors.setVendor_Name(nameVendor);
            Vendors.setPhone_Number(vendorPhoneNumber);
            Vendors.setStreet_Address(vendorStreetAddress);
            Vendors.setCity(vendorCity);
            Vendors.setState_Code(vendorStateCode);
            Vendors.setZip_Code(vendorZipCode);
            Vendors.setEmail(vendorEmail);
            Vendors.setVendor_Tracker(vendorTracker);
            vendorRepo.save(Vendors);
        } else {
            Vendors.setVendor_ID(vendorID);
            Vendors.setVendor_Name(nameVendor);
            Vendors.setPhone_Number(vendorPhoneNumber);
            Vendors.setStreet_Address(vendorStreetAddress);
            Vendors.setCity(vendorCity);
            Vendors.setState_Code(vendorStateCode);
            Vendors.setZip_Code(vendorZipCode);
            Vendors.setEmail(vendorEmail);
            Vendors.setVendor_Tracker(vendorTracker);
            vendorRepo.save(Vendors);
        }
        return mv;
    }

    @RequestMapping(value = "/submitEmployee", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("empID") String empID,
                               @RequestParam("fName") String fName,
                               @RequestParam("lName") String lName,
                               @RequestParam("pNumber") String pNumber,
                               @RequestParam("eMail") String eMail,
                               @RequestParam("sAddy") String sAddy,
                               @RequestParam("city") String city,
                               @RequestParam("sCode") String sCode,
                               @RequestParam("zCode") String zCode,
                               @RequestParam("posID") String posID,
                               @RequestParam("driverID") String driverID,
                               @RequestParam("eCon") String eCon) {
        ModelAndView mv = new ModelAndView("redirect:/employee");
        employee emp = new employee();
        if (empID.isEmpty()) {
            emp.setFirst_Name(fName);
            emp.setLast_Name(lName);
            emp.setPhone_Number(pNumber);
            emp.setEmail(eMail);
            emp.setStreet_Address(sAddy);
            emp.setCity(city);
            emp.setState_Code(sCode);
            emp.setZip_Code(zCode);
            emp.setPosition_ID(posID);
            emp.setDriver_ID(driverID);
            emp.setEmergency_Contact_ID(eCon);
            employeerepo.save(emp);
        } else {
            emp.setEmployee_ID(empID);
            emp.setFirst_Name(fName);
            emp.setLast_Name(lName);
            emp.setPhone_Number(pNumber);
            emp.setEmail(eMail);
            emp.setStreet_Address(sAddy);
            emp.setCity(city);
            emp.setState_Code(sCode);
            emp.setZip_Code(zCode);
            emp.setPosition_ID(posID);
            emp.setDriver_ID(driverID);
            emp.setEmergency_Contact_ID(eCon);
            employeerepo.save(emp);
        }
        return mv;
    }

    @RequestMapping(value = "/addTripExpense", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("teID") String teID,
                               @RequestParam("fCost") String fCost,
                               @RequestParam("sExpense") String sExpense,
                               @RequestParam("oExpense") String oExpense,
                               @RequestParam("rExpense") String rExpense,
                               @RequestParam("tExpense") String tExpense,
                               @RequestParam("loadID") String loadID) {
        ModelAndView mv = new ModelAndView("redirect:/TripExpense");
        Trip_Expense tex = new Trip_Expense();
        if (teID.isEmpty()) {
            tex.setFuel_Cost(fCost);
            tex.setScale_Expense(sExpense);
            tex.setOther_Expense(oExpense);
            tex.setRepair_Expense(rExpense);
            tex.setTotal_Expense(tExpense);
            tex.setLoad_ID(loadID);
            tripExpenseRepo.save(tex);
        } else {
            tex.setTrip_Expense_ID(teID);
            tex.setFuel_Cost(fCost);
            tex.setScale_Expense(sExpense);
            tex.setOther_Expense(oExpense);
            tex.setRepair_Expense(rExpense);
            tex.setTotal_Expense(tExpense);
            tex.setLoad_ID(loadID);
            tripExpenseRepo.save(tex);
        }
        return mv;
    }

    @RequestMapping(value = "/addtruck", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("tId") String tId,
                               @RequestParam("tVin") String tVin,
                               @RequestParam("year") String year,
                               @RequestParam("lPlate") String lPlate,
                               @RequestParam("vTracker") String vTracker,
                               @RequestParam("make") String make,
                               @RequestParam("model") String model,
                               @RequestParam("pNumber") String pNumber) {
        ModelAndView mv = new ModelAndView("redirect:/Truck");
        Truck tru = new Truck();
        if (tId.isEmpty()) {
            tru.setTruck_ID_VIN(tVin);
            tru.setYear(year);
            tru.setLicense_Plate(lPlate);
            tru.setVehicle_Tracker(vTracker);
            tru.setMake(make);
            tru.setModel(model);
            tru.setPolicy_Number(pNumber);
            truckRepo.save(tru);
        } else {
            tru.setTruck_ID(tId);
            tru.setTruck_ID_VIN(tVin);
            tru.setYear(year);
            tru.setLicense_Plate(lPlate);
            tru.setVehicle_Tracker(vTracker);
            tru.setMake(make);
            tru.setModel(model);
            tru.setPolicy_Number(pNumber);
            truckRepo.save(tru);
        }
        return mv;
    }
    @RequestMapping(value = "/submitTruckLog", method = RequestMethod.POST)
    public ModelAndView addTruckLog(@RequestParam("logID") String logID,
                                    @RequestParam("truckVIN") String truckVIN,
                                    @RequestParam("driverID") String driverID,
                                    @RequestParam("usDotID") String usDotID,
                                    @RequestParam("fLevel") String fLevel) {
        ModelAndView mv = new ModelAndView("redirect:/TruckLog");
        Truck_Log truck_log = new Truck_Log();
        if (logID.isEmpty()) {
            truck_log.setLogID(logID);
            truck_log.setTruckIDVIN(truckVIN);
            truck_log.setDriverID(driverID);
            truck_log.setUsDotID(usDotID);
            truck_log.setFuelLevel(fLevel);
            truckLogRepo.save(truck_log);
        } else {
            truck_log.setLogID(logID);
            truck_log.setTruckIDVIN(truckVIN);
            truck_log.setDriverID(driverID);
            truck_log.setUsDotID(usDotID);
            truck_log.setFuelLevel(fLevel);
            truckLogRepo.save(truck_log);
        }
        return mv;
    }

    @RequestMapping(value = "/submitLoadBoard", method = RequestMethod.POST)
    public ModelAndView addLoadBoard(@RequestParam("loadBoardID") String loadBoardID,
                                    @RequestParam("boardName") String boardName,
                                    @RequestParam("website") String website,
                                    @RequestParam("subscribed") String subscribed){
        ModelAndView mv = new ModelAndView("redirect:/loadBoard");
        Load_Board load_board = new Load_Board();
        if (loadBoardID.isEmpty()) {
            load_board.setLoadBoardID(loadBoardID);
            load_board.setBoardName(boardName);
            load_board.setWebsite(website);
            load_board.setSubscribed(subscribed);
            loadBoardRepo.save(load_board);
        } else {
            load_board.setLoadBoardID(loadBoardID);
            load_board.setBoardName(boardName);
            load_board.setWebsite(website);
            load_board.setSubscribed(subscribed);
            loadBoardRepo.save(load_board);
        }
        return mv;
    }
    @RequestMapping(value = "/submitOfficePosition", method = RequestMethod.POST)
    public ModelAndView addOfficePos(@RequestParam("positionID") String positionID,
                                    @RequestParam("employeePosition") String employeePosition){
        ModelAndView mv = new ModelAndView("redirect:/OfficePosition");
        Office_Position office_position = new Office_Position();
        if (positionID.isEmpty()) {
            office_position.setPosition_ID(positionID);
            office_position.setEmployee_Position(employeePosition);
            officePositionRepo.save(office_position);
        } else {
            office_position.setPosition_ID(positionID);
            office_position.setEmployee_Position(employeePosition);
            officePositionRepo.save(office_position);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIncident", method = RequestMethod.POST)
    public ModelAndView addIncident(@RequestParam("incidentID") String incidentID,
                                     @RequestParam("employeeID") String employeeID,
                                    @RequestParam("incidentStatus") String incidentStatus,
                                    @RequestParam("incidentType") String incidentType,
                                    @RequestParam("remarks") String remarks){
        ModelAndView mv = new ModelAndView("redirect:/Incident");
        Incident incident = new Incident();
        if (incidentID.isEmpty()) {
            incident.setIncident_ID(incidentID);
            //incident.setIncident_Status(incidentStatus);
            //incident.setIncident_Type(incidentType);
            incident.setRemarks(remarks);
            incidentRepo.save(incident);
        } else {
            incident.setIncident_ID(incidentID);
            //incident.setIncident_Status(incidentStatus);
            //incident.setIncident_Type(incidentType);
            incident.setRemarks(remarks);
            incidentRepo.save(incident);
        }
        return mv;
    }





    // Edit Functionalities

    @RequestMapping(value = "/editBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerCompany");
        Optional<Broker_Company> brokerCompanyRecord = brokerCompanyRepo.findById(id);
        Broker_Company brokerCompany = brokerCompanyRecord.get();
        mv.addObject("BrokerCompany", brokerCompany);
        return mv;
    }


    @RequestMapping(value = "/editBrokerContracts/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerContracts(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerContracts");
        Optional<Broker_Contract> brokerContractRecord = brokerContractRepo.findById(id);
        Broker_Contract brokerContract = brokerContractRecord.get();
        mv.addObject("Broker_Contract", brokerContract);
        return mv;
    }

    @RequestMapping(value = "/editBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerInfo");

        Optional<Broker_Info> brokerInfoRecord = brokerInfoRepo.findById(id);
        Broker_Info brokerInfo = brokerInfoRecord.get();
        mv.addObject("Broker_Info", brokerInfo);
        return mv;
    }

    @RequestMapping(value = "/editClient/{id}", method = RequestMethod.GET)
    public ModelAndView editClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editClient");
        Optional<Client> clientInfoRecord = clientRepo.findById(id);
        Client client = clientInfoRecord.get();
        mv.addObject("Client", client);
        return mv;
    }

    @RequestMapping(value = "/editIncome/{id}", method = RequestMethod.GET)
    public ModelAndView editIncome(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncome");
        Optional<Income> editIncomeTable = incomeRepo.findById(id);
        Income income = editIncomeTable.get();
        mv.addObject("Income", income);
        return mv;
    }

    @RequestMapping(value = "/editDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView editDI(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDotInspection");
        Optional<Dot_Inspection> editDI = dotInspectionRepo.findById(id);
        Dot_Inspection dinspection = editDI.get();
        mv.addObject("Dot_Inspection", dinspection);
        return mv;
    }
    @RequestMapping(value = "/editDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView editDOL(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDOL");
        Optional<Drop_Off_Location> editDrol = dropOffLocationRepo.findById(id);
        Drop_Off_Location dol = editDrol.get();
        mv.addObject("Drop_Off_Location", dol);
        return mv;
    }

    @RequestMapping(value = "/editMiscellaneous/{id}", method = RequestMethod.GET)
    public ModelAndView editMisc(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editMisc");
        Optional<Miscellaneous> editMisc = miscellaneousRepo.findById(id);
        Miscellaneous misc = editMisc.get();
        mv.addObject("Miscellaneous", misc);
        return mv;
    }

    @RequestMapping(value = "/editIncident/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editIncident(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncident");
        Optional<Incident> editIncidentTable = incidentRepo.findById(id);
        Incident incident = editIncidentTable.get();
        mv.addObject("Incident", incident);
        return mv;
    }

    @RequestMapping(value = "/editMaintenance/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editMaintenance(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editMaintenance");
        Optional<Maintenance> editMaintenance = maintenanceRepo.findById(id);
        Maintenance maintenance = editMaintenance.get();
        mv.addObject("Maintenance", maintenance);
        return mv;
    }

    @RequestMapping(value = "/editIncidentType/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editIncidentType(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncidentType");
        Optional<Incident_Type> editIncidentTypeTable = incidentTypeRepo.findById(id);
        Incident_Type incidentType = editIncidentTypeTable.get();
        mv.addObject("IncidentType", incidentType);
        return mv;
    }

    @RequestMapping(value = "/editTruck_Driver/{id}", method = RequestMethod.GET)
    public ModelAndView editTruckDriver(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTruckDriver");
        Optional<Truck_Driver> editTD = truckDriverRepo.findById(id);
        Truck_Driver tdv = editTD.get();
        mv.addObject("Truck_Driver", tdv);
        return mv;
    }

    @RequestMapping(value = "/editInsurance/{insureID}", method = RequestMethod.GET)
    public ModelAndView editIns(@PathVariable("insureID") String insureID) {
        ModelAndView mv = new ModelAndView("editinsurance");
        Optional<Insurance> editINS = insuranceRepo.findById(insureID);
        Insurance insr = editINS.get();
        mv.addObject("Insurance", insr);
        return mv;
    }

    @RequestMapping(value = "/editIFTA_Sticker/{id}", method = RequestMethod.GET)
    public ModelAndView editIFTA(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIFTA");
        Optional<IFTA_Sticker> editIS = ifta_stickerRepo.findById(id);
        IFTA_Sticker iftas = editIS.get();
        mv.addObject("IFTA_Sticker", iftas);
        return mv;
    }

    @RequestMapping(value = "/editCountry/{id}", method = RequestMethod.GET)
    public ModelAndView editCountries(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editCountry");
        Optional<Country> editCC = countryRepo.findById(id);
        Country country = editCC.get();
        mv.addObject("Country", country);
        return mv;
    }
    @RequestMapping(value = "/editTrailer/{id}", method = RequestMethod.GET)
    public ModelAndView editTrailer(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTrailer");
        Optional<Trailer> editT = trailerRepo.findById(id);
        Trailer trailer = editT.get();
        mv.addObject("Trailer", trailer);
        return mv;
    }
    @RequestMapping(value = "/editTire/{id}", method = RequestMethod.GET)
    public ModelAndView editTires(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTire");
        Optional<Tire> editTire = tireRepo.findById(id);
        Tire tire = editTire.get();
        mv.addObject("Tire", tire);
        return mv;
    }

    @RequestMapping(value = "/editVendor/{id}", method = RequestMethod.GET)
    public ModelAndView editVEND(@PathVariable("id") String vendorID) {
        ModelAndView mv = new ModelAndView("editV");
        Optional<Vendor> editVDE = vendorRepo.findById(vendorID);
        Vendor ven = editVDE.get();
        mv.addObject("Vendor", ven);
        return mv;
    }

    @RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView editEmployee(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editEmployee");
        Optional<employee> emp = employeerepo.findById(id);
        employee empl = emp.get();
        mv.addObject("employee", empl);
        return mv;
    }
    

    // Delete Functionalities

    @RequestMapping(value = "/deleteBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerCompany");
        brokerCompanyRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteLoad_Board/{id}", method = RequestMethod.GET)
    public ModelAndView deleteLoadBoard(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/loadBoard");
        loadBoardRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerContract/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerContract(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerContracts");
        brokerContractRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        brokerInfoRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteClient/{id}", method = RequestMethod.GET)
    public ModelAndView deleteClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/client");
        try {
            clientRepo.deleteById(id);
        }
        catch (Exception ex) {
        }
        return mv;
    }

    @RequestMapping(value = "/deleteIncome/{id}", method = RequestMethod.GET)
    public ModelAndView deleteIncome(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/income");
        incomeRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOL(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dropOffLocation");
        dropOffLocationRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteMiscellaneous/{id}", method = RequestMethod.GET)
    public ModelAndView deleteMisc(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/miscellaneous");
        miscellaneousRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOT(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dotInspection");
        dotInspectionRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteVendor/{id}", method = RequestMethod.GET)
    public ModelAndView deleteVDE(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/Vendors");
        vendorRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteInsurance/{id}", method = RequestMethod.GET)
    public ModelAndView deleteINS(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/insurance");
        insuranceRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteIncidentType/{id}", method = RequestMethod.GET) //Method to delete entry
    public ModelAndView deleteIncidentType(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/incidentType");
        incidentTypeRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteIncident/{id}", method = RequestMethod.GET) //Method to delete entry
    public ModelAndView deleteIncident(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/incident");
        incidentRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteTruck_Driver/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTD(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/truckDriver");
        truckDriverRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEMP(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/employee");
        brokerCompanyRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteIFTA_Sticker/{id}", method = RequestMethod.GET)
    public ModelAndView deleteIFTA(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/iftaSticker");
        ifta_stickerRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteTire/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTire(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/tire");
        tireRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteTrailer/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTrailer(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/Trailer");
        trailerRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteTrip_Expense/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTrip_Expense(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/TripExpense");
        tripExpenseRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteTruck/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTruck(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/Truck");
        truckRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteEmergency_Contact/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmergency_Contact(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/emergencyContacts");
        emergencyContactRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteCountry/{id}", method = RequestMethod.GET)
    public ModelAndView deleteCountry(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/country");
        countryRepo.deleteById(id);
        return mv;
    }




    // System Access Login and Registration

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public ModelAndView lin(@RequestParam("id") String id,
                            @RequestParam("uname") String uname,
                            @RequestParam("pwd") String pwd) {
        System_Login login;
        try{
            Optional<System_Login> login1 = systemLoginRepo.findByUname(uname);
            login = login1.get();
            String userpassword = login.getPassword();
            if (pwd.equals(userpassword) && login.getPrivileges().equals("0")) {
                ModelAndView mv = new ModelAndView("index");
                mv.addObject("welcome","Welcome" + " " + login.getUsername());
                return mv;
            }else if(pwd.equals(userpassword) && login.getPrivileges().equals("1")) {
                ModelAndView mv = new ModelAndView("admin");
                mv.addObject("welcome", "Welcome" + " " + login.getUsername());
                return mv;
            }
            else{
                ModelAndView mv = new ModelAndView("signin");
                mv.addObject("msg","Username and or password is incorrect! ");
                return mv;
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
            ModelAndView mv = new ModelAndView("redirect:/");
            return mv;
        }
    }

    @RequestMapping(value = "/save1", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("id") String id,
                             @RequestParam("uname") String uname,
                             @RequestParam("pwd") String pwd,
                             @RequestParam("admin") String admin) {
        ModelAndView mv = new ModelAndView("signup");
        System_Login register;
        if (!id.isEmpty()) {
            Optional<System_Login> signIn = systemLoginRepo.findById(uname.toString());
            register = signIn.get();
        } else {
            register = new System_Login();
        }
        register.setUsername(uname);
        register.setPassword(pwd);
        register.setPrivileges(admin);
        systemLoginRepo.save(register);
        mv.addObject("thelist", systemLoginRepo.findAll());
        return mv;
    }

    // Need submit incident type, submit incident, submit office position


}
