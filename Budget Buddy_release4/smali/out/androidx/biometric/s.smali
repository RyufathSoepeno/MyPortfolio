.class public final synthetic Landroidx/biometric/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/KeyguardManager;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    return p0
.end method
