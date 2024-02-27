.class public final synthetic Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/x;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/x;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/x;

    invoke-static {v0}, Landroidx/fragment/app/x;->e(Landroidx/fragment/app/x;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
