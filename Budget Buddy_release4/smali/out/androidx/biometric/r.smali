.class Landroidx/biometric/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/r$a;,
        Landroidx/biometric/r$b;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/biometric/r$b;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_18

    check-cast p0, Landroid/app/KeyguardManager;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method static b(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Landroidx/biometric/r;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    invoke-static {p0}, Landroidx/biometric/r$b;->b(Landroid/app/KeyguardManager;)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {p0}, Landroidx/biometric/r$a;->a(Landroid/app/KeyguardManager;)Z

    move-result p0

    return p0
.end method
