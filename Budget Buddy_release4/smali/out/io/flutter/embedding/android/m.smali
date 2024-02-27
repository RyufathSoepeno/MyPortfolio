.class public Lio/flutter/embedding/android/m;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lq0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/m$b;
    }
.end annotation


# instance fields
.field private e:Landroid/media/ImageReader;

.field private f:Landroid/media/Image;

.field private g:Landroid/graphics/Bitmap;

.field private h:Lq0/a;

.field private i:Lio/flutter/embedding/android/m$b;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILio/flutter/embedding/android/m$b;)V
    .registers 5

    invoke-static {p2, p3}, Lio/flutter/embedding/android/m;->g(II)Landroid/media/ImageReader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lio/flutter/embedding/android/m;-><init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/m$b;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/m$b;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/m;->j:Z

    iput-object p2, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    iput-object p3, p0, Lio/flutter/embedding/android/m;->i:Lio/flutter/embedding/android/m$b;

    invoke-direct {p0}, Lio/flutter/embedding/android/m;->h()V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    :cond_a
    return-void
.end method

.method private static g(II)Landroid/media/ImageReader;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p0, :cond_13

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "ImageReader width must be greater than 0, but given width=%d, set width=1"

    invoke-static {p0, v2}, Lio/flutter/embedding/android/m;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, p0

    :goto_14
    if-gtz p1, :cond_25

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "ImageReader height must be greater than 0, but given height=%d, set height=1"

    invoke-static {p1, p0}, Lio/flutter/embedding/android/m;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    move v4, p1

    :goto_26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_35

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x300

    invoke-static/range {v3 .. v8}, Lio/flutter/embedding/android/j;->a(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0

    :cond_35
    const/4 p0, 0x3

    invoke-static {v3, v4, v1, p0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlutterImageView"

    invoke-static {p1, p0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    invoke-static {v0}, Lio/flutter/embedding/android/k;->a(Landroid/media/Image;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/embedding/android/l;->a(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    goto :goto_5f

    :cond_1c
    iget-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    return-void

    :cond_27
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    iget-object v3, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_4b

    iget-object v3, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_53

    :cond_4b
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    :cond_53
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :goto_5f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lio/flutter/embedding/android/m;->j:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/m;->d()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lio/flutter/embedding/android/m;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/m;->j:Z

    return-void
.end method

.method public b(Lq0/a;)V
    .registers 4

    sget-object v0, Lio/flutter/embedding/android/m$a;->a:[I

    iget-object v1, p0, Lio/flutter/embedding/android/m;->i:Lio/flutter/embedding/android/m$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq0/a;->v(Landroid/view/Surface;)V

    :goto_17
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iput-object p1, p0, Lio/flutter/embedding/android/m;->h:Lq0/a;

    iput-boolean v1, p0, Lio/flutter/embedding/android/m;->j:Z

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Z
    .registers 3

    iget-boolean v0, p0, Lio/flutter/embedding/android/m;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lio/flutter/embedding/android/m;->e()V

    iput-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_16
    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public getAttachedRenderer()Lq0/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/m;->h:Lq0/a;

    return-object v0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public j(II)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/android/m;->h:Lq0/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_16

    return-void

    :cond_16
    invoke-direct {p0}, Lio/flutter/embedding/android/m;->e()V

    invoke-virtual {p0}, Lio/flutter/embedding/android/m;->f()V

    invoke-static {p1, p2}, Lio/flutter/embedding/android/m;->g(II)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lio/flutter/embedding/android/m;->f:Landroid/media/Image;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lio/flutter/embedding/android/m;->k()V

    :cond_a
    iget-object v0, p0, Lio/flutter/embedding/android/m;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    iget-object p3, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_11

    iget-object p3, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getHeight()I

    move-result p3

    if-ne p2, p3, :cond_11

    return-void

    :cond_11
    iget-object p3, p0, Lio/flutter/embedding/android/m;->i:Lio/flutter/embedding/android/m$b;

    sget-object p4, Lio/flutter/embedding/android/m$b;->e:Lio/flutter/embedding/android/m$b;

    if-ne p3, p4, :cond_29

    iget-boolean p3, p0, Lio/flutter/embedding/android/m;->j:Z

    if-eqz p3, :cond_29

    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/android/m;->j(II)V

    iget-object p1, p0, Lio/flutter/embedding/android/m;->h:Lq0/a;

    iget-object p2, p0, Lio/flutter/embedding/android/m;->e:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lq0/a;->v(Landroid/view/Surface;)V

    :cond_29
    return-void
.end method
