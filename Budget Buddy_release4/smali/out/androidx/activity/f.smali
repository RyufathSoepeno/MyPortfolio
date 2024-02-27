.class public Landroidx/activity/f;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Landroidx/activity/h;


# instance fields
.field private e:Landroidx/lifecycle/j;

.field private final f:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance p2, Landroidx/activity/e;

    invoke-direct {p2, p0}, Landroidx/activity/e;-><init>(Landroidx/activity/f;)V

    invoke-direct {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/f;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method

.method public static synthetic b(Landroidx/activity/f;)V
    .registers 1

    invoke-static {p0}, Landroidx/activity/f;->e(Landroidx/activity/f;)V

    return-void
.end method

.method private final c()Landroidx/lifecycle/j;
    .registers 2

    iget-object v0, p0, Landroidx/activity/f;->e:Landroidx/lifecycle/j;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/activity/f;->e:Landroidx/lifecycle/j;

    :cond_b
    return-object v0
.end method

.method private final d()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/f0;->a(Landroid/view/View;Landroidx/lifecycle/i;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/activity/j;->a(Landroid/view/View;Landroidx/activity/h;)V

    return-void
.end method

.method private static final e(Landroidx/activity/f;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/f;
    .registers 2

    invoke-direct {p0}, Landroidx/activity/f;->c()Landroidx/lifecycle/j;

    move-result-object v0

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/activity/f;->d()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final n()Landroidx/activity/OnBackPressedDispatcher;
    .registers 2

    iget-object v0, p0, Landroidx/activity/f;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroidx/activity/f;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroidx/activity/f;->c()Landroidx/lifecycle/j;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Landroidx/activity/f;->c()Landroidx/lifecycle/j;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-direct {p0}, Landroidx/activity/f;->c()Landroidx/lifecycle/j;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/f;->e:Landroidx/lifecycle/j;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    invoke-direct {p0}, Landroidx/activity/f;->d()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/activity/f;->d()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/activity/f;->d()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
