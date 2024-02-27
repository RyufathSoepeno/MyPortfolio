.class public Lio/flutter/embedding/android/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lio/flutter/embedding/android/f0;

.field private f:Lio/flutter/embedding/android/j0;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/h$c;->c:Z

    iput-boolean v0, p0, Lio/flutter/embedding/android/h$c;->d:Z

    sget-object v1, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    iput-object v1, p0, Lio/flutter/embedding/android/h$c;->e:Lio/flutter/embedding/android/f0;

    sget-object v1, Lio/flutter/embedding/android/j0;->f:Lio/flutter/embedding/android/j0;

    iput-object v1, p0, Lio/flutter/embedding/android/h$c;->f:Lio/flutter/embedding/android/j0;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/embedding/android/h$c;->g:Z

    iput-boolean v0, p0, Lio/flutter/embedding/android/h$c;->h:Z

    iput-boolean v0, p0, Lio/flutter/embedding/android/h$c;->i:Z

    iput-object p1, p0, Lio/flutter/embedding/android/h$c;->a:Ljava/lang/Class;

    iput-object p2, p0, Lio/flutter/embedding/android/h$c;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lio/flutter/embedding/android/h;

    invoke-direct {p0, v0, p1}, Lio/flutter/embedding/android/h$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/flutter/embedding/android/h$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/h$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lio/flutter/embedding/android/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/flutter/embedding/android/h;",
            ">()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/android/h$c;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/android/h;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lio/flutter/embedding/android/h$c;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->T1(Landroid/os/Bundle;)V

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The FlutterFragment subclass sent in the constructor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/h$c;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the expected return type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate FlutterFragment subclass ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/h$c;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected b()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/flutter/embedding/android/h$c;->b:Ljava/lang/String;

    const-string v2, "cached_engine_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/flutter/embedding/android/h$c;->c:Z

    const-string v2, "destroy_engine_with_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lio/flutter/embedding/android/h$c;->d:Z

    const-string v2, "handle_deeplinking"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lio/flutter/embedding/android/h$c;->e:Lio/flutter/embedding/android/f0;

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    sget-object v1, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_render_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/embedding/android/h$c;->f:Lio/flutter/embedding/android/j0;

    if-eqz v1, :cond_2f

    goto :goto_31

    :cond_2f
    sget-object v1, Lio/flutter/embedding/android/j0;->f:Lio/flutter/embedding/android/j0;

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_transparency_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/flutter/embedding/android/h$c;->g:Z

    const-string v2, "should_attach_engine_to_activity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lio/flutter/embedding/android/h$c;->h:Z

    const-string v2, "should_automatically_handle_on_back_pressed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lio/flutter/embedding/android/h$c;->i:Z

    const-string v2, "should_delay_first_android_view_draw"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public c(Z)Lio/flutter/embedding/android/h$c;
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/h$c;->c:Z

    return-object p0
.end method

.method public d(Ljava/lang/Boolean;)Lio/flutter/embedding/android/h$c;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/flutter/embedding/android/h$c;->d:Z

    return-object p0
.end method

.method public e(Lio/flutter/embedding/android/f0;)Lio/flutter/embedding/android/h$c;
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/h$c;->e:Lio/flutter/embedding/android/f0;

    return-object p0
.end method

.method public f(Z)Lio/flutter/embedding/android/h$c;
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/h$c;->g:Z

    return-object p0
.end method

.method public g(Z)Lio/flutter/embedding/android/h$c;
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/h$c;->i:Z

    return-object p0
.end method

.method public h(Lio/flutter/embedding/android/j0;)Lio/flutter/embedding/android/h$c;
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/h$c;->f:Lio/flutter/embedding/android/j0;

    return-object p0
.end method
