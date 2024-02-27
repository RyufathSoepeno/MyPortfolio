.class public final synthetic Lio/flutter/plugins/localauth/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ls0/h;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls0/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/flutter/plugins/localauth/f$i;->d:Lio/flutter/plugins/localauth/f$i;

    return-object v0
.end method

.method public static synthetic b(Lio/flutter/plugins/localauth/f$h;Ljava/lang/Object;Ls0/a$e;)V
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p0}, Lio/flutter/plugins/localauth/f$h;->e()Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lio/flutter/plugins/localauth/f;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_13
    invoke-interface {p2, p1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugins/localauth/f$h;Ljava/lang/Object;Ls0/a$e;)V
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p0}, Lio/flutter/plugins/localauth/f$h;->c()Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lio/flutter/plugins/localauth/f;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_13
    invoke-interface {p2, p1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lio/flutter/plugins/localauth/f$h;Ljava/lang/Object;Ls0/a$e;)V
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p0}, Lio/flutter/plugins/localauth/f$h;->j()Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lio/flutter/plugins/localauth/f;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_13
    invoke-interface {p2, p1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lio/flutter/plugins/localauth/f$h;Ljava/lang/Object;Ls0/a$e;)V
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-interface {p0}, Lio/flutter/plugins/localauth/f$h;->d()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lio/flutter/plugins/localauth/f;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_13
    invoke-interface {p2, p1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lio/flutter/plugins/localauth/f$h;Ljava/lang/Object;Ls0/a$e;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugins/localauth/f$c;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/localauth/f$f;

    new-instance v2, Lio/flutter/plugins/localauth/l$a;

    invoke-direct {v2, v0, p2}, Lio/flutter/plugins/localauth/l$a;-><init>(Ljava/util/ArrayList;Ls0/a$e;)V

    invoke-interface {p0, v1, p1, v2}, Lio/flutter/plugins/localauth/f$h;->g(Lio/flutter/plugins/localauth/f$c;Lio/flutter/plugins/localauth/f$f;Lio/flutter/plugins/localauth/f$j;)V

    return-void
.end method

.method public static g(Ls0/c;Lio/flutter/plugins/localauth/f$h;)V
    .registers 6

    new-instance v0, Ls0/a;

    invoke-static {}, Lio/flutter/plugins/localauth/l;->a()Ls0/h;

    move-result-object v1

    const-string v2, "dev.flutter.pigeon.LocalAuthApi.isDeviceSupported"

    invoke-direct {v0, p0, v2, v1}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    new-instance v2, Lio/flutter/plugins/localauth/g;

    invoke-direct {v2, p1}, Lio/flutter/plugins/localauth/g;-><init>(Lio/flutter/plugins/localauth/f$h;)V

    invoke-virtual {v0, v2}, Ls0/a;->e(Ls0/a$d;)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v1}, Ls0/a;->e(Ls0/a$d;)V

    :goto_1a
    new-instance v0, Ls0/a;

    invoke-static {}, Lio/flutter/plugins/localauth/l;->a()Ls0/h;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.LocalAuthApi.deviceCanSupportBiometrics"

    invoke-direct {v0, p0, v3, v2}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    if-eqz p1, :cond_30

    new-instance v2, Lio/flutter/plugins/localauth/h;

    invoke-direct {v2, p1}, Lio/flutter/plugins/localauth/h;-><init>(Lio/flutter/plugins/localauth/f$h;)V

    invoke-virtual {v0, v2}, Ls0/a;->e(Ls0/a$d;)V

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v1}, Ls0/a;->e(Ls0/a$d;)V

    :goto_33
    new-instance v0, Ls0/a;

    invoke-static {}, Lio/flutter/plugins/localauth/l;->a()Ls0/h;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.LocalAuthApi.stopAuthentication"

    invoke-direct {v0, p0, v3, v2}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    if-eqz p1, :cond_49

    new-instance v2, Lio/flutter/plugins/localauth/i;

    invoke-direct {v2, p1}, Lio/flutter/plugins/localauth/i;-><init>(Lio/flutter/plugins/localauth/f$h;)V

    invoke-virtual {v0, v2}, Ls0/a;->e(Ls0/a$d;)V

    goto :goto_4c

    :cond_49
    invoke-virtual {v0, v1}, Ls0/a;->e(Ls0/a$d;)V

    :goto_4c
    new-instance v0, Ls0/a;

    invoke-static {}, Lio/flutter/plugins/localauth/l;->a()Ls0/h;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.LocalAuthApi.getEnrolledBiometrics"

    invoke-direct {v0, p0, v3, v2}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    if-eqz p1, :cond_62

    new-instance v2, Lio/flutter/plugins/localauth/j;

    invoke-direct {v2, p1}, Lio/flutter/plugins/localauth/j;-><init>(Lio/flutter/plugins/localauth/f$h;)V

    invoke-virtual {v0, v2}, Ls0/a;->e(Ls0/a$d;)V

    goto :goto_65

    :cond_62
    invoke-virtual {v0, v1}, Ls0/a;->e(Ls0/a$d;)V

    :goto_65
    new-instance v0, Ls0/a;

    invoke-static {}, Lio/flutter/plugins/localauth/l;->a()Ls0/h;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.LocalAuthApi.authenticate"

    invoke-direct {v0, p0, v3, v2}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    if-eqz p1, :cond_7b

    new-instance p0, Lio/flutter/plugins/localauth/k;

    invoke-direct {p0, p1}, Lio/flutter/plugins/localauth/k;-><init>(Lio/flutter/plugins/localauth/f$h;)V

    invoke-virtual {v0, p0}, Ls0/a;->e(Ls0/a$d;)V

    goto :goto_7e

    :cond_7b
    invoke-virtual {v0, v1}, Ls0/a;->e(Ls0/a$d;)V

    :goto_7e
    return-void
.end method
