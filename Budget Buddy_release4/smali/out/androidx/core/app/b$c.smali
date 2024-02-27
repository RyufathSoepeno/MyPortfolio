.class Landroidx/core/app/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {p0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method

.method static b(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/app/c;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static c(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/app/d;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
