.class Landroidx/core/app/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    const-class v0, Landroid/app/AppOpsManager;

    invoke-static {p0, v0}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method
