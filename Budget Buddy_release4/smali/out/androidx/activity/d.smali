.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/d;->a:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Landroidx/activity/d;->a:Landroidx/activity/ComponentActivity;

    invoke-static {v0, p1}, Landroidx/activity/ComponentActivity;->Z(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V

    return-void
.end method
