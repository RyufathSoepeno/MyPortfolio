.class public Lio/flutter/embedding/android/o;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lq0/c;


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lq0/a;

.field private i:Landroid/view/Surface;

.field private final j:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/o;->e:Z

    iput-boolean p1, p0, Lio/flutter/embedding/android/o;->f:Z

    iput-boolean p1, p0, Lio/flutter/embedding/android/o;->g:Z

    new-instance p1, Lio/flutter/embedding/android/o$a;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/o$a;-><init>(Lio/flutter/embedding/android/o;)V

    iput-object p1, p0, Lio/flutter/embedding/android/o;->j:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-direct {p0}, Lio/flutter/embedding/android/o;->n()V

    return-void
.end method

.method static synthetic d(Lio/flutter/embedding/android/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/o;->e:Z

    return p1
.end method

.method static synthetic e(Lio/flutter/embedding/android/o;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/embedding/android/o;->f:Z

    return p0
.end method

.method static synthetic f(Lio/flutter/embedding/android/o;)V
    .registers 1

    invoke-direct {p0}, Lio/flutter/embedding/android/o;->l()V

    return-void
.end method

.method static synthetic g(Lio/flutter/embedding/android/o;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/o;->k(II)V

    return-void
.end method

.method static synthetic h(Lio/flutter/embedding/android/o;)V
    .registers 1

    invoke-direct {p0}, Lio/flutter/embedding/android/o;->m()V

    return-void
.end method

.method static synthetic i(Lio/flutter/embedding/android/o;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic j(Lio/flutter/embedding/android/o;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    return-object p1
.end method

.method private k(II)V
    .registers 5

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    invoke-virtual {v0, p1, p2}, Lq0/a;->u(II)V

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    :cond_14
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    iget-boolean v2, p0, Lio/flutter/embedding/android/o;->g:Z

    invoke-virtual {v1, v0, v2}, Lq0/a;->s(Landroid/view/Surface;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/o;->g:Z

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lq0/a;->t()V

    iget-object v0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    :cond_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/o;->j:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    const-string v1, "FlutterTextureView"

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/o;->m()V

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/o;->f:Z

    goto :goto_20

    :cond_1b
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public b(Lq0/a;)V
    .registers 4

    const-string v0, "FlutterTextureView"

    const-string v1, "Attaching to FlutterRenderer."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    if-eqz v1, :cond_15

    const-string v1, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    invoke-virtual {v1}, Lq0/a;->t()V

    :cond_15
    iput-object p1, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/android/o;->f:Z

    iget-boolean p1, p0, Lio/flutter/embedding/android/o;->e:Z

    if-eqz p1, :cond_26

    const-string p1, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    invoke-static {v0, p1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/o;->l()V

    :cond_26
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/o;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/o;->f:Z

    goto :goto_15

    :cond_e
    const-string v0, "FlutterTextureView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    invoke-static {v0, v1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public getAttachedRenderer()Lq0/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/o;->h:Lq0/a;

    return-object v0
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/o;->i:Landroid/view/Surface;

    return-void
.end method
