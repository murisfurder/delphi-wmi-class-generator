/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010-2012
/// Application version 1.0.4674.62299
/// WMI version 7601.17514
/// Creation Date 17-10-2012 18:18:23
/// Namespace root\CIMV2 Class Win32_LoadOrderGroupServiceMembers
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_LoadOrderGroupServiceMembers.asp
/// </summary>


unit uWin32_LoadOrderGroupServiceMembers;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
  {$REGION 'Documentation'}
  /// <summary>
  /// The Win32_LoadOrderGroupServiceMembers class represents an association between 
  /// a load order group and a base service. Note: Win32_SystemDriver objects are 
  /// members of that load order group. Not all services are members of groups, and 
  /// not all groups have services within them.
  /// </summary>
  {$ENDREGION}
  TWin32_LoadOrderGroupServiceMembers=class(TWmiClass)
  private
    FGroupComponent                     : OleVariant;
    FPartComponent                      : OleVariant;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   {$REGION 'Documentation'}
   /// <summary>
   /// The GroupComponent reference represents the Win32_LoadOrderGroup containing the 
   /// load order group properties associated with the base service.
   /// </summary>
   {$ENDREGION}
   property GroupComponent : OleVariant read FGroupComponent;
   {$REGION 'Documentation'}
   /// <summary>
   /// The PartComponent reference represents the Win32_BaseService containing the 
   /// base service that is a member of a load order group
   /// </summary>
   {$ENDREGION}
   property PartComponent : OleVariant read FPartComponent;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_LoadOrderGroupServiceMembers}

constructor TWin32_LoadOrderGroupServiceMembers.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_LoadOrderGroupServiceMembers');
end;

destructor TWin32_LoadOrderGroupServiceMembers.Destroy;
begin
  inherited;
end;

procedure TWin32_LoadOrderGroupServiceMembers.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FGroupComponent      := inherited Value['GroupComponent'];
    FPartComponent       := inherited Value['PartComponent'];
  end;
end;

end.
