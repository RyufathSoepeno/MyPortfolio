.class final Landroidx/lifecycle/u$d;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->e(Landroidx/lifecycle/e0;)Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/l<",
        "Lw/a;",
        "Landroidx/lifecycle/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Landroidx/lifecycle/u$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/u$d;

    invoke-direct {v0}, Landroidx/lifecycle/u$d;-><init>()V

    sput-object v0, Landroidx/lifecycle/u$d;->e:Landroidx/lifecycle/u$d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lw/a;)Landroidx/lifecycle/w;
    .registers 3

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/lifecycle/w;

    invoke-direct {p1}, Landroidx/lifecycle/w;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lw/a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u$d;->a(Lw/a;)Landroidx/lifecycle/w;

    move-result-object p1

    return-object p1
.end method
