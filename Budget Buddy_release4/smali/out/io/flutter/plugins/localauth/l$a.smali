.class Lio/flutter/plugins/localauth/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/localauth/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/localauth/l;->g(Ls0/c;Lio/flutter/plugins/localauth/f$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugins/localauth/f$j<",
        "Lio/flutter/plugins/localauth/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ls0/a$e;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ls0/a$e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/localauth/l$a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lio/flutter/plugins/localauth/l$a;->b:Ls0/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lio/flutter/plugins/localauth/f$e;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/localauth/l$a;->b(Lio/flutter/plugins/localauth/f$e;)V

    return-void
.end method

.method public b(Lio/flutter/plugins/localauth/f$e;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugins/localauth/l$a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lio/flutter/plugins/localauth/l$a;->b:Ls0/a$e;

    iget-object v0, p0, Lio/flutter/plugins/localauth/l$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method
