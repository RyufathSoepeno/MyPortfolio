.class Lio/flutter/view/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/hardware/display/DisplayManager;

.field final synthetic b:Lio/flutter/view/s;


# direct methods
.method constructor <init>(Lio/flutter/view/s;Landroid/hardware/display/DisplayManager;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/view/s$b;->b:Lio/flutter/view/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/view/s$b;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/s$b;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    if-nez p1, :cond_23

    iget-object p1, p0, Lio/flutter/view/s$b;->a:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    iget-object v0, p0, Lio/flutter/view/s$b;->b:Lio/flutter/view/s;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v3, p1

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/flutter/view/s;->b(Lio/flutter/view/s;J)J

    iget-object v0, p0, Lio/flutter/view/s$b;->b:Lio/flutter/view/s;

    invoke-static {v0}, Lio/flutter/view/s;->c(Lio/flutter/view/s;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    :cond_23
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
