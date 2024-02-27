.class final Landroidx/lifecycle/v$a;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/v;-><init>(Ly/c;Landroidx/lifecycle/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/a<",
        "Landroidx/lifecycle/w;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Landroidx/lifecycle/e0;


# direct methods
.method constructor <init>(Landroidx/lifecycle/e0;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/v$a;->e:Landroidx/lifecycle/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/w;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/v$a;->e:Landroidx/lifecycle/e0;

    invoke-static {v0}, Landroidx/lifecycle/u;->e(Landroidx/lifecycle/e0;)Landroidx/lifecycle/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidx/lifecycle/v$a;->a()Landroidx/lifecycle/w;

    move-result-object v0

    return-object v0
.end method
