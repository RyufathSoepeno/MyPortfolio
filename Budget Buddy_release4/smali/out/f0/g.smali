.class public Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/c$d;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lz0/a;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lf0/g;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lf0/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
