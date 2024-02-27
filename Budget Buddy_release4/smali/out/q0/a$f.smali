.class final Lq0/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/view/r$c;
.implements Lio/flutter/view/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

.field private c:Z

.field private d:Lio/flutter/view/r$b;

.field private e:Lio/flutter/view/r$a;

.field private final f:Ljava/lang/Runnable;

.field private g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field final synthetic h:Lq0/a;


# direct methods
.method constructor <init>(Lq0/a;JLandroid/graphics/SurfaceTexture;)V
    .registers 6

    iput-object p1, p0, Lq0/a$f;->h:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lq0/a$f$a;

    invoke-direct {p1, p0}, Lq0/a$f$a;-><init>(Lq0/a$f;)V

    iput-object p1, p0, Lq0/a$f;->f:Ljava/lang/Runnable;

    new-instance v0, Lq0/a$f$b;

    invoke-direct {v0, p0}, Lq0/a$f$b;-><init>(Lq0/a$f;)V

    iput-object v0, p0, Lq0/a$f;->g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-wide p2, p0, Lq0/a$f;->a:J

    new-instance p2, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    invoke-direct {p2, p4, p1}, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;-><init>(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lq0/a$f;->b:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    invoke-virtual {p0}, Lq0/a$f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lq0/a$f;->g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic e(Lq0/a$f;)Lio/flutter/view/r$a;
    .registers 1

    iget-object p0, p0, Lq0/a$f;->e:Lio/flutter/view/r$a;

    return-object p0
.end method

.method static synthetic f(Lq0/a$f;)Z
    .registers 1

    iget-boolean p0, p0, Lq0/a$f;->c:Z

    return p0
.end method

.method static synthetic g(Lq0/a$f;)J
    .registers 3

    iget-wide v0, p0, Lq0/a$f;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(Lio/flutter/view/r$b;)V
    .registers 2

    iput-object p1, p0, Lq0/a$f;->d:Lio/flutter/view/r$b;

    return-void
.end method

.method public b(Lio/flutter/view/r$a;)V
    .registers 2

    iput-object p1, p0, Lq0/a$f;->e:Lio/flutter/view/r$a;

    return-void
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lq0/a$f;->b:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lq0/a$f;->a:J

    return-wide v0
.end method

.method protected finalize()V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lq0/a$f;->c:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_22

    if-eqz v0, :cond_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lq0/a$f;->h:Lq0/a;

    invoke-static {v0}, Lq0/a;->e(Lq0/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lq0/a$e;

    iget-wide v2, p0, Lq0/a$f;->a:J

    iget-object v4, p0, Lq0/a$f;->h:Lq0/a;

    invoke-static {v4}, Lq0/a;->c(Lq0/a;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lq0/a$e;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_22

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_22
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public h()Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;
    .registers 2

    iget-object v0, p0, Lq0/a$f;->b:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .registers 3

    iget-object v0, p0, Lq0/a$f;->d:Lio/flutter/view/r$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lio/flutter/view/r$b;->onTrimMemory(I)V

    :cond_7
    return-void
.end method
