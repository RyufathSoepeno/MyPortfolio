.class public final Lio/flutter/view/FlutterCallbackInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final callbackClassName:Ljava/lang/String;

.field public final callbackLibraryPath:Ljava/lang/String;

.field public final callbackName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/view/FlutterCallbackInformation;->callbackClassName:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    return-void
.end method

.method public static lookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;
    .registers 2

    invoke-static {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeLookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;

    move-result-object p0

    return-object p0
.end method
