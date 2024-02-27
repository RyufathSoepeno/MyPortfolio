.class public final synthetic Lio/flutter/plugin/platform/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/view/Surface;)Landroid/graphics/Canvas;
    .registers 1

    invoke-virtual {p0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method
