.class Lio/flutter/embedding/android/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/o;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/o;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "FlutterTextureView"

    const-string p2, "SurfaceTextureListener.onSurfaceTextureAvailable()"

    invoke-static {p1, p2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/flutter/embedding/android/o;->d(Lio/flutter/embedding/android/o;Z)Z

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->e(Lio/flutter/embedding/android/o;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->f(Lio/flutter/embedding/android/o;)V

    :cond_1a
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureDestroyed()"

    invoke-static {p1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/embedding/android/o;->d(Lio/flutter/embedding/android/o;Z)Z

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->e(Lio/flutter/embedding/android/o;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->h(Lio/flutter/embedding/android/o;)V

    :cond_1a
    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->i(Lio/flutter/embedding/android/o;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->i(Lio/flutter/embedding/android/o;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/embedding/android/o;->j(Lio/flutter/embedding/android/o;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureSizeChanged()"

    invoke-static {p1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1}, Lio/flutter/embedding/android/o;->e(Lio/flutter/embedding/android/o;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lio/flutter/embedding/android/o$a;->a:Lio/flutter/embedding/android/o;

    invoke-static {p1, p2, p3}, Lio/flutter/embedding/android/o;->g(Lio/flutter/embedding/android/o;II)V

    :cond_14
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
