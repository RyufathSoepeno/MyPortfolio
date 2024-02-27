.class Landroidx/core/view/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/ViewGroup;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/ViewGroup;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0
.end method

.method static c(Landroid/view/ViewGroup;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method
