.class public final Lw/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/z;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lj1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/l<",
            "Lw/a;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lj1/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lj1/l<",
            "-",
            "Lw/a;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/f;->a:Ljava/lang/Class;

    iput-object p2, p0, Lw/f;->b:Lj1/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lw/f;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Lj1/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj1/l<",
            "Lw/a;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lw/f;->b:Lj1/l;

    return-object v0
.end method
