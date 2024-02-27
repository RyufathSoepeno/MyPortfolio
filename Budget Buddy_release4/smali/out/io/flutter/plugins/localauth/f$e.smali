.class public final Lio/flutter/plugins/localauth/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/localauth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/localauth/f$e$a;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/plugins/localauth/f$d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/ArrayList;)Lio/flutter/plugins/localauth/f$e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/localauth/f$e;"
        }
    .end annotation

    new-instance v0, Lio/flutter/plugins/localauth/f$e;

    invoke-direct {v0}, Lio/flutter/plugins/localauth/f$e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_1a

    :cond_e
    invoke-static {}, Lio/flutter/plugins/localauth/f$d;->values()[Lio/flutter/plugins/localauth/f$d;

    move-result-object v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    :goto_1a
    invoke-virtual {v0, p0}, Lio/flutter/plugins/localauth/f$e;->b(Lio/flutter/plugins/localauth/f$d;)V

    return-object v0
.end method


# virtual methods
.method public b(Lio/flutter/plugins/localauth/f$d;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lio/flutter/plugins/localauth/f$e;->a:Lio/flutter/plugins/localauth/f$d;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"value\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/flutter/plugins/localauth/f$e;->a:Lio/flutter/plugins/localauth/f$d;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    iget v1, v1, Lio/flutter/plugins/localauth/f$d;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
