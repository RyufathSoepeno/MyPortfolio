.class public final synthetic Ly/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# instance fields
.field public final synthetic a:Ly/c;


# direct methods
.method public synthetic constructor <init>(Ly/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->a:Ly/c;

    return-void
.end method


# virtual methods
.method public final d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 4

    iget-object v0, p0, Ly/b;->a:Ly/c;

    invoke-static {v0, p1, p2}, Ly/c;->a(Ly/c;Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    return-void
.end method
