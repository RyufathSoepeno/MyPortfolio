.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# instance fields
.field private final a:Landroidx/lifecycle/c;

.field private final b:Landroidx/lifecycle/g;


# direct methods
.method constructor <init>(Landroidx/lifecycle/c;Landroidx/lifecycle/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 5

    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    goto :goto_37

    :pswitch_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->b(Landroidx/lifecycle/i;)V

    goto :goto_37

    :pswitch_1a
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->g(Landroidx/lifecycle/i;)V

    goto :goto_37

    :pswitch_20
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->e(Landroidx/lifecycle/i;)V

    goto :goto_37

    :pswitch_26
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/i;)V

    goto :goto_37

    :pswitch_2c
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->f(Landroidx/lifecycle/i;)V

    goto :goto_37

    :pswitch_32
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->c(Landroidx/lifecycle/i;)V

    :goto_37
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/g;

    if-eqz v0, :cond_3e

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/g;->d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method
