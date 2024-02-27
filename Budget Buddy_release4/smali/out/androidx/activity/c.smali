.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$c;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/c;->a:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/activity/c;->a:Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->a0(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
