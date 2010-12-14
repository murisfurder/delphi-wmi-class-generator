// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
// WMI version 7600.16385
// Namespace root\CIMV2 Class Win32_1394ControllerDevice
// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_1394ControllerDevice.asp
unit uWin32_1394ControllerDevice;

interface

uses

 Activex,
 ComObj,
 uWmiDelphiClass;

type
   ///<summary>
   ///The Win32_1394ControllerDevice class represents an association between the high-
   ///speed serial bus (IEEE 1394 Firewire) Controller and the CIM_LogicalDevice 
   ///connected to it. This serial bus provides enhanced connectivity for a wide 
   ///range of devices, including consumer audio/video components, storage 
   ///peripherals, other computers, and portable devices. IEEE 1394 has been adopted 
   ///by the consumer electronics industry and provides a Plug and Play-compatible 
   ///expansion interface.
   ///</summary>
  TWin32_1394ControllerDevice=class(TWmiClass)
  private
   FAccessState                        : Word;
   FAntecedent                         : Variant;
   FDependent                          : Variant;
   FNegotiatedDataWidth                : LongInt;
   FNegotiatedSpeed                    : Int64;
   FNumberOfHardResets                 : LongInt;
   FNumberOfSoftResets                 : LongInt;
  public
   ///<summary>
   ///The AccessState property indicates whether the controller is actively 
   ///commanding or accessing the device (value=1) or not (value=2).  Also, the 
   ///value, "Unknown" (0), can be defined. This information is necessary when a 
   ///logical device can be commanded by, or accessed through, multiple controllers.
   ///</summary>
   property AccessState : Word read FAccessState;
   ///<summary>
   ///The Win32_1394Controller antecedent reference represents the 1394 controller 
   ///associated with this device.
   ///</summary>
   property Antecedent : Variant read FAntecedent;
   ///<summary>
   ///The CIM_LogicalDevice dependent reference represents the CIM_LogicalDevice 
   ///connected to the 1394 controller.
   ///</summary>
   property Dependent : Variant read FDependent;
   ///<summary>
   ///When several bus and/or connection data widths are possible, the 
   ///NegotiatedDataWidth property defines the one in use between the devices.  Data 
   ///width is specified in bits.  If data width is not negotiated, or if this 
   ///information is not available/important to device management, the property 
   ///should be set to 0.
   ///</summary>
   property NegotiatedDataWidth : LongInt read FNegotiatedDataWidth;
   ///<summary>
   ///When several bus and/or connection speeds are possible, the NegotiatedSpeed 
   ///property defines the one in use between the devices.  Speed is specified in 
   ///bits per second.  If connection or bus speeds are not negotiated, or if this 
   ///information is not available/important to device management, the property 
   ///should be set to 0.
   ///</summary>
   property NegotiatedSpeed : Int64 read FNegotiatedSpeed;
   ///<summary>
   ///Number of hard resets issued by the controller. A hard reset returns the device 
   ///to its initialization or 'boot-up' state. All internal device state information 
   ///and data are lost.
   ///</summary>
   property NumberOfHardResets : LongInt read FNumberOfHardResets;
   ///<summary>
   ///Number of soft resets issued by the controller. A soft reset does not 
   ///completely clear current device state and/or data. Exact semantics are 
   ///dependent on the device, and on the protocols and mechanisms used to 
   ///communicate to it.
   ///</summary>
   property NumberOfSoftResets : LongInt read FNumberOfSoftResets;
   procedure SetCollectionIndex(Index:Integer); override;
   constructor Create; overload;
   constructor Create(LoadData:boolean); overload;
  end;


implementation


{TWin32_1394ControllerDevice}

 constructor TWin32_1394ControllerDevice.Create;
 begin
   Create(True);
 end;

 constructor TWin32_1394ControllerDevice.Create(LoadData: boolean);
 begin
   Create(LoadData,'root\CIMV2','Win32_1394ControllerDevice');
 end;

 procedure TWin32_1394ControllerDevice.SetCollectionIndex(Index: Integer);
 begin
    if (Index>=0) and (Index<=FWmiCollection.Count-1) then
    begin
       FWmiCollectionIndex:=Index;
       FAccessState                         :=VarWordNull(GetPropertyValue('AccessState'));
       FAntecedent                          :=GetPropertyValue('Antecedent');
       FDependent                           :=GetPropertyValue('Dependent');
       FNegotiatedDataWidth                 :=VarLongNull(GetPropertyValue('NegotiatedDataWidth'));
       FNegotiatedSpeed                     :=VarInt64Null(GetPropertyValue('NegotiatedSpeed'));
       FNumberOfHardResets                  :=VarLongNull(GetPropertyValue('NumberOfHardResets'));
       FNumberOfSoftResets                  :=VarLongNull(GetPropertyValue('NumberOfSoftResets'));
    end;
 end;

end.