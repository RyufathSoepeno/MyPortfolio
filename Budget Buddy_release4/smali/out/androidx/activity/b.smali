.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->e:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/activity/b;->e:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->g0()V

    return-void
.end method
