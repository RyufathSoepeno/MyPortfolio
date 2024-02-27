.class public final synthetic Lio/flutter/embedding/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/embedding/android/b0;

.field public final synthetic f:Lio/flutter/embedding/android/d0$c;

.field public final synthetic g:J

.field public final synthetic h:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/b0;Lio/flutter/embedding/android/d0$c;JLandroid/view/KeyEvent;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/z;->e:Lio/flutter/embedding/android/b0;

    iput-object p2, p0, Lio/flutter/embedding/android/z;->f:Lio/flutter/embedding/android/d0$c;

    iput-wide p3, p0, Lio/flutter/embedding/android/z;->g:J

    iput-object p5, p0, Lio/flutter/embedding/android/z;->h:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lio/flutter/embedding/android/z;->e:Lio/flutter/embedding/android/b0;

    iget-object v1, p0, Lio/flutter/embedding/android/z;->f:Lio/flutter/embedding/android/d0$c;

    iget-wide v2, p0, Lio/flutter/embedding/android/z;->g:J

    iget-object v4, p0, Lio/flutter/embedding/android/z;->h:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2, v3, v4}, Lio/flutter/embedding/android/b0;->d(Lio/flutter/embedding/android/b0;Lio/flutter/embedding/android/d0$c;JLandroid/view/KeyEvent;)V

    return-void
.end method
