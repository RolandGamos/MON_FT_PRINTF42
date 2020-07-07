/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_treat_xX.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lweglarz <lweglarz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/07 14:48:35 by lweglarz          #+#    #+#             */
/*   Updated: 2020/07/07 14:50:12 by lweglarz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	conv_x(va_list *list, t_struct *strct, f_flags *flags)
{
	unsigned int nbr;

	nbr = va_arg(*list, unsigned int);
	ft_puthexax(nbr, strct, flags);
}

void	conv_capsx(va_list *list, t_struct *strct, f_flags *flags)
{
	unsigned int nbr;

	nbr = va_arg(*list, unsigned int);
	ft_puthexcapsx(nbr, strct, flags);
}	

/*
void    ft_treat_hexa()
{

}
*/