.class final Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/WindowMetricsCalculator$Companion;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/l<",
        "Landroidx/window/layout/WindowMetricsCalculator;",
        "Landroidx/window/layout/WindowMetricsCalculator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;

    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/window/layout/WindowMetricsCalculator;)Landroidx/window/layout/WindowMetricsCalculator;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroidx/window/layout/WindowMetricsCalculator;

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculator$Companion$reset$1;->invoke(Landroidx/window/layout/WindowMetricsCalculator;)Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object p1

    return-object p1
.end method
