.class public final synthetic Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/a;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/x;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/x;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/x;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/x;Ljava/lang/Integer;)V

    return-void
.end method
