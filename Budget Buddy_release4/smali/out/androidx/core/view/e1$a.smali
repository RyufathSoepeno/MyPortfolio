.class Landroidx/core/view/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/ViewConfiguration;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/d1;->a(Landroid/view/ViewConfiguration;)I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/ViewConfiguration;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/c1;->a(Landroid/view/ViewConfiguration;)Z

    move-result p0

    return p0
.end method
