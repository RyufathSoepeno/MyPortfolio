.class Landroidx/core/view/m1$k;
.super Landroidx/core/view/m1$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field static final q:Landroidx/core/view/m1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$k;->q:Landroidx/core/view/m1;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$j;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;Landroidx/core/view/m1$k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$j;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$j;)V

    return-void
.end method


# virtual methods
.method final d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public g(I)Landroidx/core/graphics/b;
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/m1$n;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/view/u1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/b;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/m1$n;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/view/t1;->a(Landroid/view/WindowInsets;I)Z

    move-result p1

    return p1
.end method
