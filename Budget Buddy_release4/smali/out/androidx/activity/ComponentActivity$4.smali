.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 3

    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_1c

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->g:La/a;

    invoke-virtual {p1}, La/a;->b()V

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->R()Landroidx/lifecycle/d0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/d0;->a()V

    :cond_1c
    return-void
.end method
