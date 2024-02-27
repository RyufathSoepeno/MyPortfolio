.class Lq0/a$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq0/a$f;


# direct methods
.method constructor <init>(Lq0/a$f;)V
    .registers 2

    iput-object p1, p0, Lq0/a$f$b;->a:Lq0/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    iget-object p1, p0, Lq0/a$f$b;->a:Lq0/a$f;

    invoke-static {p1}, Lq0/a$f;->f(Lq0/a$f;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lq0/a$f$b;->a:Lq0/a$f;

    iget-object p1, p1, Lq0/a$f;->h:Lq0/a;

    invoke-static {p1}, Lq0/a;->c(Lq0/a;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_22

    :cond_17
    iget-object p1, p0, Lq0/a$f$b;->a:Lq0/a$f;

    iget-object v0, p1, Lq0/a$f;->h:Lq0/a;

    invoke-static {p1}, Lq0/a$f;->g(Lq0/a$f;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;J)V

    :cond_22
    :goto_22
    return-void
.end method
