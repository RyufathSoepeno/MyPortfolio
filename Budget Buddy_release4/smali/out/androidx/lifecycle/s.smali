.class public final synthetic Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$c;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/t;

    invoke-static {v0}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/t;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
