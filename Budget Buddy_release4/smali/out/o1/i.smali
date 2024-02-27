.class public final Lo1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo1/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lo1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lj1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo1/b;Lj1/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/b<",
            "+TT;>;",
            "Lj1/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/i;->a:Lo1/b;

    iput-object p2, p0, Lo1/i;->b:Lj1/l;

    return-void
.end method

.method public static final synthetic a(Lo1/i;)Lo1/b;
    .registers 1

    iget-object p0, p0, Lo1/i;->a:Lo1/b;

    return-object p0
.end method

.method public static final synthetic b(Lo1/i;)Lj1/l;
    .registers 1

    iget-object p0, p0, Lo1/i;->b:Lj1/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lo1/i$a;

    invoke-direct {v0, p0}, Lo1/i$a;-><init>(Lo1/i;)V

    return-object v0
.end method
