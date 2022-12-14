#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSNetServiceBrowser (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
@end
@implementation NSNetService (Exports)
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name port: (int) port 
{
	id resultVal__;
	resultVal__ = [[self initWithDomain: domain type: type name: name port: port ] autorelease];
	return resultVal__;
}
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name 
{
	id resultVal__;
	resultVal__ = [[self initWithDomain: domain type: type name: name ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSNetServiceBrowser class], @protocol(NSNetServiceBrowserInstanceExports));
	class_addProtocol([NSNetServiceBrowser class], @protocol(NSNetServiceBrowserClassExports));
	class_addProtocol([NSNetService class], @protocol(NSNetServiceInstanceExports));
	class_addProtocol([NSNetService class], @protocol(NSNetServiceClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSNetServicesUnknownError"] = @-72000L;
	context[@"NSNetServicesCollisionError"] = @-72001L;
	context[@"NSNetServicesNotFoundError"] = @-72002L;
	context[@"NSNetServicesActivityInProgress"] = @-72003L;
	context[@"NSNetServicesBadArgumentError"] = @-72004L;
	context[@"NSNetServicesCancelledError"] = @-72005L;
	context[@"NSNetServicesInvalidError"] = @-72006L;
	context[@"NSNetServicesTimeoutError"] = @-72007L;

	context[@"NSNetServiceNoAutoRename"] = @1UL;
	context[@"NSNetServiceListenForConnections"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSNetServicesErrorCode;
	if (p != NULL) context[@"NSNetServicesErrorCode"] = NSNetServicesErrorCode;
	p = (void*) &NSNetServicesErrorDomain;
	if (p != NULL) context[@"NSNetServicesErrorDomain"] = NSNetServicesErrorDomain;
}
void Foundation_NSNetServicesProtocols()
{
	(void)@protocol(NSNetServiceDelegate);
	(void)@protocol(NSNetServiceBrowserDelegate);
}
void load_Foundation_NSNetServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
