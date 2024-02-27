.class Landroidx/biometric/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .registers 2

    const-class v0, Landroid/app/KeyguardManager;

    invoke-static {p0, v0}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static b(Landroid/app/KeyguardManager;)Z
    .registers 1

    invoke-static {p0}, Landroidx/biometric/s;->a(Landroid/app/KeyguardManager;)Z

    move-result p0

    return p0
.end method
